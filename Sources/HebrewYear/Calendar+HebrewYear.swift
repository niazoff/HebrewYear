import Foundation

public extension Calendar {
  func hebrewYear(for date: Date) -> HebrewYear? {
    let hebrewCalendar = makeHebrewCalendar()
    guard let year = hebrewCalendar.dateComponents([.year], from: date).year,
      let hebrewYear = HebrewYear(year: year) else { return nil }
    return hebrewYear
  }
  
  private func makeHebrewCalendar() -> Calendar {
    if self.identifier == .hebrew { return self }
    else {
      var calendar = Calendar(identifier: .hebrew)
      calendar.timeZone = self.timeZone
      return calendar
    }
  }
}
