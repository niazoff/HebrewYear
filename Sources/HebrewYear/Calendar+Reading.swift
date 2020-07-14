import Foundation
import Torah

public extension Calendar {
  func reading(for date: Date) -> Reading? {
    let hebrewCalendar = self.toHebrewCalendar()
    guard let hebrewYear = hebrewCalendar.hebrewYear(for: date),
      let month = HebrewYear.Month(rawValue: hebrewCalendar.component(.month, from: date))
      else { return nil }
    let day = hebrewCalendar.component(.day, from: date)
    return YearTypeReadings.reading(for: hebrewYear.type, month: month, day: day)
  }
}
