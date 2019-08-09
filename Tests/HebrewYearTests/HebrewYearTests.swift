import XCTest
@testable import HebrewYear

final class HebrewYearTests: XCTestCase {
  func testCalendarExtension() {
    let date = Date(timeIntervalSince1970: 1565314200)
    let calendar = Calendar(identifier: .gregorian)
    guard let hebrewYear = calendar.hebrewYear(for: date)
      else { preconditionFailure() }
    XCTAssert(hebrewYear.year == 5779)
  }
  
  func testCalendarExtensionLastDay() {
    let date = Date(timeIntervalSince1970: 1569801600)
    var calendar = Calendar(identifier: .gregorian)
    guard let newYorkTimeZone = TimeZone(identifier: "America/New_York")
      else { preconditionFailure() }
    calendar.timeZone = newYorkTimeZone
    guard let newYorkHebrewYear = calendar.hebrewYear(for: date)
      else { preconditionFailure() }
    XCTAssert(newYorkHebrewYear.year == 5779)
    
    guard let jerusalemTimeZone = TimeZone(identifier: "Asia/Jerusalem")
      else { preconditionFailure() }
    calendar.timeZone = jerusalemTimeZone
    guard let jerusalemHebrewYear = calendar.hebrewYear(for: date)
      else { preconditionFailure() }
    XCTAssert(jerusalemHebrewYear.year == 5780)
  }
  
  func test5761() {
    guard let year = HebrewYear(year: 5761)
      else { preconditionFailure() }
    XCTAssertFalse(year.isLeapYear)
    XCTAssert(year.length == .deficient)
    XCTAssert(year.type == .זחא)
  }
  
  func test5763() {
    guard let year = HebrewYear(year: 5763)
      else { preconditionFailure() }
    XCTAssert(year.isLeapYear)
    XCTAssert(year.length == .abundant)
    XCTAssert(year.type == .זשה)
  }
  
  func test5768() {
    guard let year = HebrewYear(year: 5768)
      else { preconditionFailure() }
    XCTAssert(year.isLeapYear)
    XCTAssert(year.length == .deficient)
    XCTAssert(year.type == .החא)
  }
  
  func test5769() {
    guard let year = HebrewYear(year: 5769)
      else { preconditionFailure() }
    XCTAssertFalse(year.isLeapYear)
    XCTAssert(year.length == .regular)
    XCTAssert(year.type == .גכה)
  }
  
  func test5770() {
    guard let year = HebrewYear(year: 5770)
      else { preconditionFailure() }
    XCTAssertFalse(year.isLeapYear)
    XCTAssert(year.length == .abundant)
    XCTAssert(year.type == .זשג)
  }
  
  func test5774() {
    guard let year = HebrewYear(year: 5774)
      else { preconditionFailure() }
    XCTAssert(year.isLeapYear)
    XCTAssert(year.length == .abundant)
    XCTAssert(year.type == .השג)
  }
  
  func test5777() {
    guard let year = HebrewYear(year: 5777)
      else { preconditionFailure() }
    XCTAssertFalse(year.isLeapYear)
    XCTAssert(year.length == .deficient)
    XCTAssert(year.type == .בחג)
  }
  
  func test5778() {
    guard let year = HebrewYear(year: 5778)
      else { preconditionFailure() }
    XCTAssertFalse(year.isLeapYear)
    XCTAssert(year.length == .regular)
    XCTAssert(year.type == .הכז)
  }
  
  func test5779() {
    guard let year = HebrewYear(year: 5779)
      else { preconditionFailure() }
    XCTAssert(year.isLeapYear)
    XCTAssert(year.length == .abundant)
    XCTAssert(year.type == .בשז)
  }
  
  func test5780() {
    guard let year = HebrewYear(year: 5780)
      else { preconditionFailure() }
    XCTAssertFalse(year.isLeapYear)
    XCTAssert(year.length == .abundant)
    XCTAssert(year.type == .בשה)
  }
  
  func test5782() {
    guard let year = HebrewYear(year: 5782)
      else { preconditionFailure() }
    XCTAssert(year.isLeapYear)
    XCTAssert(year.length == .regular)
    XCTAssert(year.type == .גכז)
  }
  
  func test5784() {
    guard let year = HebrewYear(year: 5784)
      else { preconditionFailure() }
    XCTAssert(year.isLeapYear)
    XCTAssert(year.length == .deficient)
    XCTAssert(year.type == .זחג)
  }
  
  func test5785() {
    guard let year = HebrewYear(year: 5785)
      else { preconditionFailure() }
    XCTAssertFalse(year.isLeapYear)
    XCTAssert(year.length == .abundant)
    XCTAssert(year.type == .השא)
  }
  
  func test5790() {
    guard let year = HebrewYear(year: 5790)
      else { preconditionFailure() }
    XCTAssert(year.isLeapYear)
    XCTAssert(year.length == .deficient)
    XCTAssert(year.type == .בחה)
  }
}
