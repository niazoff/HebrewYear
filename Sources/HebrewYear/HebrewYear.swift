import Foundation
import Torah
import SwiftExtensions

public class HebrewYear {
  public let year: Int
  
  private let calendar = Calendar(identifier: .hebrew)
  
  private lazy var roshHashanahDate: Date = {
    calendar.date(from: .init(year: year, month: 1, day: 1)) ?? preconditionFailure()
  }()
  
  private lazy var nextRoshHashanahDate: Date = {
    calendar.date(byAdding: .init(year: 1), to: roshHashanahDate) ?? preconditionFailure()
  }()
  
  private lazy var roshHashanahWeekday: Int = {
    calendar.component(.weekday, from: roshHashanahDate)
  }()
  
  public var startDate: Date { roshHashanahDate }
  public var endDate: Date {
    calendar.date(byAdding: .init(day: -1), to: nextRoshHashanahDate) ?? preconditionFailure()
  }
  
  public private(set) lazy var isLeapYear = {
    Constants.leapYearRemainders.contains(year % Constants.leapYearModulus)
  }()
  
  public private(set) lazy var length: Length = {
    guard let numberOfDays = calendar.dateComponents([.day], from: roshHashanahDate, to: nextRoshHashanahDate).day,
      let length = self.length(for: numberOfDays)
      else { preconditionFailure() }
    return length
  }()
  
  public private(set) lazy var type: YearType = {
    guard let type = self.yearType(for: roshHashanahWeekday, length: length, isLeapYear: isLeapYear)
      else { preconditionFailure() }
    return type
  }()
  
  private enum Constants {
    static let leapYearModulus = 19
    static let leapYearRemainders = [0, 3, 6, 8, 11, 14, 17]
  }
  
  public init(year: Int) {
    guard year > 0 else { preconditionFailure("Year must be greater than zero.") }
    self.year = year
  }
  
  public func readings(in location: Location = .diaspora) -> [(Date, Reading)] {
    YearTypeReadings.readings(for: type, location: location).compactMap { month, day, reading in
      calendar.date(from: .init(year: year, month: month.rawValue, day: day)).map { ($0, reading) }
    }
  }
  
  private func length(for numberOfDays: Int) -> Length? {
    switch numberOfDays % 10 {
    case 3: return .deficient
    case 4: return .regular
    case 5: return .abundant
    default: return nil
    }
  }
  
  private func yearType(for roshHashanahWeekday: Int, length: Length, isLeapYear: Bool) -> YearType? {
    if isLeapYear { return leapYearType(for: roshHashanahWeekday, length: length) }
    else { return ordinaryYearType(for: roshHashanahWeekday, length: length) }
  }
  
  private func ordinaryYearType(for roshHashanahWeekday: Int, length: Length) -> YearType? {
    switch length {
    case .deficient:
      switch roshHashanahWeekday {
      case 2: return .בחג
      case 7: return .זחא
      default: return nil
      }
    case .regular:
      switch roshHashanahWeekday {
      case 3: return .גכה
      case 5: return .הכז
      default: return nil
      }
    case .abundant:
      switch roshHashanahWeekday {
      case 2: return .בשה
      case 5: return .השא
      case 7: return .זשג
      default: return nil
      }
    }
  }
  
  private func leapYearType(for roshHashanahWeekday: Int, length: Length) -> YearType? {
    switch length {
    case .deficient:
      switch roshHashanahWeekday {
      case 2: return .בחה
      case 5: return .החא
      case 7: return .זחג
      default: return nil
      }
    case .regular:
      switch roshHashanahWeekday {
      case 3: return .גכז
      default: return nil
      }
    case .abundant:
      switch roshHashanahWeekday {
      case 2: return .בשז
      case 5: return .השג
      case 7: return .זשה
      default: return nil
      }
    }
  }
}

extension HebrewYear: Equatable {
  public static func ==(lhs: HebrewYear, rhs: HebrewYear) -> Bool {
    lhs.year == rhs.year
  }
}

extension HebrewYear: Comparable {
  public static func <(lhs: HebrewYear, rhs: HebrewYear) -> Bool {
    lhs.year < rhs.year
  }
}

public extension HebrewYear {
  func parshahs(in location: Location = .diaspora) -> [ParshahIdentifier] {
    readings(in: location)
      .sorted { $0.0 < $1.0 }
      .compactMap { ($0.1 as? ParshahReading)?.identifier }
  }
}
