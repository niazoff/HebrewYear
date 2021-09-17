import Foundation
import Torah

public extension Calendar {
  func reading(for date: Date, location: Location = .diaspora) -> Reading? {
    let hebrewCalendar = self.toHebrewCalendar()
    return HebrewYear.Month(rawValue: hebrewCalendar.component(.month, from: date))
      .flatMap { YearTypeReadings.reading(for: hebrewCalendar.hebrewYear(for: date).type, month: $0, day: hebrewCalendar.component(.day, from: date), location: location) }
  }
  
  func nextParshahReading(after date: Date, direction: Calendar.SearchDirection = .forward, location: Location = .diaspora) -> (Date, ParshahReading)? {
    var nextShabbatDate: Date?
    var reading: ParshahReading?
    while reading == nil {
      nextShabbatDate = self.nextShabbatDate(after: nextShabbatDate ?? date, direction: direction)
      guard let date = nextShabbatDate else { break }
      reading = self.reading(for: date, location: location) as? ParshahReading
    }
    if reading?.identifier == .bereshit,
       let endDate = nextShabbatDate {
      var date = self.startOfDay(for: date)
      var previousReading: ParshahReading?
      while previousReading == nil && !self.isDate(date, inSameDayAs: endDate) {
        guard let nextDayDate = self.date(byAdding: .day, value: 1, to: date) else { break }
        date = nextDayDate
        previousReading = self.reading(for: date, location: location) as? ParshahReading
        if let reading = previousReading { return (date, reading) }
      }
    }
    return nextShabbatDate.flatMap { date in reading.map { (date, $0) } }
  }
}
