import XCTest
@testable import HebrewYear

final class HebrewYearTests: XCTestCase {
  func testCalendarExtension() {
    let date = Date(timeIntervalSince1970: 1565314200)
    let calendar = Calendar(identifier: .gregorian)
    XCTAssert(calendar.hebrewYear(for: date).year == 5779)
  }
  
  func testCalendarExtensionLastDay() {
    let date = Date(timeIntervalSince1970: 1569801600)
    var calendar = Calendar(identifier: .gregorian)
    guard let newYorkTimeZone = TimeZone(identifier: "America/New_York")
      else { preconditionFailure() }
    calendar.timeZone = newYorkTimeZone
    XCTAssert(calendar.hebrewYear(for: date).year == 5779)
    
    guard let jerusalemTimeZone = TimeZone(identifier: "Asia/Jerusalem")
      else { preconditionFailure() }
    calendar.timeZone = jerusalemTimeZone
    XCTAssert(calendar.hebrewYear(for: date).year == 5780)
  }
  
  func test5761() {
    let year = HebrewYear(year: 5761)
    XCTAssertFalse(year.isLeapYear)
    XCTAssert(year.length == .deficient)
    XCTAssert(year.type == .זחא)
  }
  
  func test5763() {
    let year = HebrewYear(year: 5763)
    XCTAssert(year.isLeapYear)
    XCTAssert(year.length == .abundant)
    XCTAssert(year.type == .זשה)
  }
  
  func test5768() {
    let year = HebrewYear(year: 5768)
    XCTAssert(year.isLeapYear)
    XCTAssert(year.length == .deficient)
    XCTAssert(year.type == .החא)
  }
  
  func test5769() {
    let year = HebrewYear(year: 5769)
    XCTAssertFalse(year.isLeapYear)
    XCTAssert(year.length == .regular)
    XCTAssert(year.type == .גכה)
  }
  
  func test5770() {
    let year = HebrewYear(year: 5770)
    XCTAssertFalse(year.isLeapYear)
    XCTAssert(year.length == .abundant)
    XCTAssert(year.type == .זשג)
  }
  
  func test5774() {
    let year = HebrewYear(year: 5774)
    XCTAssert(year.isLeapYear)
    XCTAssert(year.length == .abundant)
    XCTAssert(year.type == .השג)
  }
  
  func test5777() {
    let year = HebrewYear(year: 5777)
    XCTAssertFalse(year.isLeapYear)
    XCTAssert(year.length == .deficient)
    XCTAssert(year.type == .בחג)
  }
  
  func test5778() {
    let year = HebrewYear(year: 5778)
    XCTAssertFalse(year.isLeapYear)
    XCTAssert(year.length == .regular)
    XCTAssert(year.type == .הכז)
  }
  
  func test5779() {
    let year = HebrewYear(year: 5779)
    XCTAssert(year.isLeapYear)
    XCTAssert(year.length == .abundant)
    XCTAssert(year.type == .בשז)
  }
  
  func test5780() {
    let year = HebrewYear(year: 5780)
    XCTAssertFalse(year.isLeapYear)
    XCTAssert(year.length == .abundant)
    XCTAssert(year.type == .בשה)
  }
  
  func test5782() {
    let year = HebrewYear(year: 5782)
    XCTAssert(year.isLeapYear)
    XCTAssert(year.length == .regular)
    XCTAssert(year.type == .גכז)
  }
  
  func test5784() {
    let year = HebrewYear(year: 5784)
    XCTAssert(year.isLeapYear)
    XCTAssert(year.length == .deficient)
    XCTAssert(year.type == .זחג)
  }
  
  func test5785() {
    let year = HebrewYear(year: 5785)
    XCTAssertFalse(year.isLeapYear)
    XCTAssert(year.length == .abundant)
    XCTAssert(year.type == .השא)
  }
  
  func test5790() {
    let year = HebrewYear(year: 5790)
    XCTAssert(year.isLeapYear)
    XCTAssert(year.length == .deficient)
    XCTAssert(year.type == .בחה)
  }
}
