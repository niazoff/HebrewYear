import XCTest
import Torah
@testable import HebrewYear

final class ReadingTests: XCTestCase {
  func testNextShabbatSundayAv245779Reading() {
    let date = Date(timeIntervalSince1970: 1566755400)
    var calendar = Calendar(identifier: .gregorian)
    guard let newYorkTimeZone = TimeZone(identifier: "America/New_York")
      else { preconditionFailure() }
    calendar.timeZone = newYorkTimeZone
    guard let nextShabbatDate = calendar.nextShabbatDate(after: date),
      let reading = calendar.reading(for: nextShabbatDate)
      else { preconditionFailure() }
    XCTAssert((reading as? ParshahReading)?.identifier == .reeh)
  }
}
