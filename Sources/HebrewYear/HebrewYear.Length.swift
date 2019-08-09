public extension HebrewYear {
  /**
   The length of a year in regards to its month's conforming or deviating from the regular alternating 29 or 30 day pattern.
   
   Generally, months in the year alternate between a [length](https://en.wikibooks.org/wiki/Mathematics_of_the_Jewish_Calendar/The_lengths_of_the_months) of 29 and 30 days.
   For example, Tishri has 30 days, Heshvan has 29 days and so on. Sometimes a year deviates from the regular pattern
   and contains an added day or lacks one thereof. A year lacking a day will cause Kislev to lose a day and is descried as "deficient".
   A year containing an added day will annex a day to Heshvan and is described as "abundant".
   Otherwise, the year will conform to the regular 29/30 pattern and appropriately be described as "regular".
   */
  enum Length {
    /// Heshvan has its regular 29 days and Kislev lacks one day with 29 days.
    case deficient
    
    /// Both Heshvan and Kislev have their regular 29 and 30 days respectively.
    case regular
    
    /// Heshvan contains an added day with 30 days and Kislev has its regular 30 days.
    case abundant
  }
}
