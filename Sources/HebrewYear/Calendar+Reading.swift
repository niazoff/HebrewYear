import Foundation
import Torah

public extension Calendar {
  func reading(for date: Date, location: Location = .diaspora) -> Reading? {
    let hebrewCalendar = self.toHebrewCalendar()
    return HebrewYear.Month(rawValue: hebrewCalendar.component(.month, from: date))
      .flatMap { YearTypeReadings.reading(for: hebrewCalendar.hebrewYear(for: date).type, month: $0, day: hebrewCalendar.component(.day, from: date), location: location) }
  }
  
  func nextParshahReading(after date: Date, direction: Calendar.SearchDirection = .forward, location: Location = .diaspora) -> (Date?, ParshahReading?) {
    var nextShabbatDate: Date?
    var reading: ParshahReading?
    while reading == nil {
      nextShabbatDate = self.nextShabbatDate(after: nextShabbatDate ?? date, direction: direction)
      guard let date = nextShabbatDate else { break }
      reading = self.reading(for: date, location: location) as? ParshahReading
    }
    return (nextShabbatDate, reading)
  }
}
