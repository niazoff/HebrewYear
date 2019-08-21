import Torah

struct YearTypeReadings {
  private typealias Readings = [[Int: Reading]]
  
  private static let bereishit = ReadingFactory.makeReading(for: .bereishit)
  
  static func reading(for type: HebrewYear.YearType, month: Int, day: Int) -> Reading? {
    readings(for: type)[month][day]
  }
  
  private static func readings(for type: HebrewYear.YearType) -> Readings {
    switch type {
    case .בחג: return [
      [
        27: bereishit
      ]
    ]
    case .בשה: return [
      [
        27: bereishit
      ]
    ]
    case .גכה: return [
      [
        26: bereishit
      ]
    ]
    case .הכז: return [
      [
        24: bereishit
      ]
    ]
    case .השא: return [
      [
        24: bereishit
      ]
    ]
    case .זחא: return [
      [
        29: bereishit
      ]
    ]
    case .זשג: return [
      [
        29: bereishit
      ]
    ]
    case .בחה: return [
      [
        27: bereishit
      ]
    ]
    case .בשז: return [
      [
        27: bereishit
      ]
    ]
    case .גכז: return [
      [
        26: bereishit
      ]
    ]
    case .החא: return [
      [
        24: bereishit
      ]
    ]
    case .השג: return [
      [
        24: bereishit
      ]
    ]
    case .זחג: return [
      [
        29: bereishit
      ]
    ]
    case .זשה: return [
      [
        29: bereishit
      ]
    ]
    }
  }
}
