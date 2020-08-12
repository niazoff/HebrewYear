import Foundation
import Torah

public extension Calendar {
  func reading(for date: Date, location: Location = .diaspora) -> Reading? {
    let hebrewCalendar = self.toHebrewCalendar()
    return HebrewYear.Month(rawValue: hebrewCalendar.component(.month, from: date))
      .flatMap { YearTypeReadings.reading(for: hebrewCalendar.hebrewYear(for: date).type, month: $0, day: hebrewCalendar.component(.day, from: date), location: location) }
  }
}
