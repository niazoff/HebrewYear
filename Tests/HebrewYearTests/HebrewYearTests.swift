import XCTest
@testable import HebrewYear

final class HebrewYearTests: XCTestCase {
  func test5761() {
    let year = HebrewYear(year: 5761)
    XCTAssertFalse(year.isLeapYear)
    XCTAssertTrue(year.length == .deficient)
    XCTAssertTrue(year.type == .זחא)
  }
  
  func test5763() {
    let year = HebrewYear(year: 5763)
    XCTAssertTrue(year.isLeapYear)
    XCTAssertTrue(year.length == .abundant)
    XCTAssertTrue(year.type == .זשה)
  }
  
  func test5768() {
    let year = HebrewYear(year: 5768)
    XCTAssertTrue(year.isLeapYear)
    XCTAssertTrue(year.length == .deficient)
    XCTAssertTrue(year.type == .החא)
  }
  
  func test5769() {
    let year = HebrewYear(year: 5769)
    XCTAssertFalse(year.isLeapYear)
    XCTAssertTrue(year.length == .regular)
    XCTAssertTrue(year.type == .גכה)
  }
  
  func test5770() {
    let year = HebrewYear(year: 5770)
    XCTAssertFalse(year.isLeapYear)
    XCTAssertTrue(year.length == .abundant)
    XCTAssertTrue(year.type == .זשג)
  }
  
  func test5774() {
    let year = HebrewYear(year: 5774)
    XCTAssertTrue(year.isLeapYear)
    XCTAssertTrue(year.length == .abundant)
    XCTAssertTrue(year.type == .השג)
  }
  
  func test5777() {
    let year = HebrewYear(year: 5777)
    XCTAssertFalse(year.isLeapYear)
    XCTAssertTrue(year.length == .deficient)
    XCTAssertTrue(year.type == .בחג)
  }
  
  func test5778() {
    let year = HebrewYear(year: 5778)
    XCTAssertFalse(year.isLeapYear)
    XCTAssertTrue(year.length == .regular)
    XCTAssertTrue(year.type == .הכז)
  }
  
  func test5779() {
    let year = HebrewYear(year: 5779)
    XCTAssertTrue(year.isLeapYear)
    XCTAssertTrue(year.length == .abundant)
    XCTAssertTrue(year.type == .בשז)
  }
  
  func test5780() {
    let year = HebrewYear(year: 5780)
    XCTAssertFalse(year.isLeapYear)
    XCTAssertTrue(year.length == .abundant)
    XCTAssertTrue(year.type == .בשה)
  }
  
  func test5782() {
    let year = HebrewYear(year: 5782)
    XCTAssertTrue(year.isLeapYear)
    XCTAssertTrue(year.length == .regular)
    XCTAssertTrue(year.type == .גכז)
  }
  
  func test5784() {
    let year = HebrewYear(year: 5784)
    XCTAssertTrue(year.isLeapYear)
    XCTAssertTrue(year.length == .deficient)
    XCTAssertTrue(year.type == .זחג)
  }
  
  func test5785() {
    let year = HebrewYear(year: 5785)
    XCTAssertFalse(year.isLeapYear)
    XCTAssertTrue(year.length == .abundant)
    XCTAssertTrue(year.type == .השא)
  }
  
  func test5790() {
    let year = HebrewYear(year: 5790)
    XCTAssertTrue(year.isLeapYear)
    XCTAssertTrue(year.length == .deficient)
    XCTAssertTrue(year.type == .בחה)
  }
}
