public extension HebrewYear {
  enum Month: Int {
    case tishri = 1
    case heshvan
    case kislev
    case tevet
    case shevat
    case adarI
    /// Use this value for Adar during a non-leap year as Apple's library decides to do.
    case adarII
    case nisan
    case iyar
    case sivan
    case tamuz
    case av
    case elul
  }
}
