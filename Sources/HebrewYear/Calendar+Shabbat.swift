import Foundation

public extension Calendar {
  func nextShabbatDate(after date: Date, direction: Calendar.SearchDirection = .forward) -> Date? {
    self.nextDate(after: date, matching: .init(weekday: 7), matchingPolicy: .nextTime, direction: direction)
  }
}
