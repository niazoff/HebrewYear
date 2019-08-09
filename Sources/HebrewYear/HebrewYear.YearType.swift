public extension HebrewYear {
  /**
   A type of year from the fourteen possible types.
   
   Any Hebrew year is one of only [fourteen possible year types](https://en.wikibooks.org/wiki/Mathematics_of_the_Jewish_Calendar/The_fourteen_types_of_year) or day layouts.
   If two years are of the same type, all of their dates and events will align and occur on the same weekday as the other.
   Types are denoted using an `xyz` format where `x` is the first weekday of the year (Rosh Hashanah) in Hebrew numeral format
   and can only be a Monday, Tuesday, Thursday or Shabbat. `y` correlates to the year's length and denotes a `ח` for deficient,
   a `כ` for regular and `ש` for abundant. Finally `z` distinguishes between an ordinary and leap year and is the first weekday of
   Passover in Hebrew numeral format.
   */
  enum YearType: Int {
    // MARK: - Ordinary years
    /// Deficient ordinary year that starts on Monday.
    case בחג
    
    /// Abundant ordinary year that starts on Monday.
    case בשה
    
    /// Regular ordinary year that starts on Tuesday.
    case גכה
    
    /// Regular ordinary year that starts on Thursday.
    case הכז
    
    /// Abundant ordinary year that starts on Thursday.
    case השא
    
    /// Deficient ordinary year that starts on Shabbat.
    case זחא
    
    /// Abundant ordinary year that starts on Shabbat.
    case זשג
    
    // MARK: - Leap years
    /// Deficient leap year that starts on Monday.
    case בחה
    
    /// Abundant leap year that starts on Monday.
    case בשז
    
    /// Regular leap year that starts on Tuesday.
    case גכז
    
    /// Deficient leap year that starts on Thursday.
    case החא
    
    /// Abundant leap year that starts on Thursday.
    case השג
    
    /// Deficient leap year that starts on Shabbat.
    case זחג
    
    /// Abundant leap year that starts on Shabbat.
    case זשה
  }
}
