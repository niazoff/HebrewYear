import Foundation

public extension Calendar {
  var currentHebrewYear: HebrewYear { hebrewYear(for: Date()) }
  
  func hebrewYear(for date: Date) -> HebrewYear {
    let hebrewCalendar = self.toHebrewCalendar()
    let year = hebrewCalendar.component(.year, from: date)
    return HebrewYear(year: year)
  }
}
