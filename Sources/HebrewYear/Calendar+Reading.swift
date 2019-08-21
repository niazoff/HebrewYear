import Foundation
import Torah

public extension Calendar {
  func reading(for date: Date) -> Reading? {
    let hebrewCalendar = self.makeHebrewCalendar()
    guard let hebrewYear = hebrewCalendar.hebrewYear(for: date) else { return nil }
    let month = hebrewCalendar.component(.month, from: date),
      day = hebrewCalendar.component(.day, from: date)
    return YearTypeReadings.reading(for: hebrewYear.type, month: month, day: day)
  }
}
