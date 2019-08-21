import Foundation

public extension Calendar {
  func hebrewYear(for date: Date) -> HebrewYear? {
    let hebrewCalendar = self.makeHebrewCalendar()
    let year = hebrewCalendar.component(.year, from: date)
    guard let hebrewYear = HebrewYear(year: year) else { return nil }
    return hebrewYear
  }
}
