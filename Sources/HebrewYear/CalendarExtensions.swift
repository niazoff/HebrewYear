import Foundation

extension Calendar {
  func makeHebrewCalendar() -> Calendar {
    if self.identifier == .hebrew { return self }
    else {
      var calendar = Calendar(identifier: .hebrew)
      calendar.timeZone = self.timeZone
      return calendar
    }
  }
}
