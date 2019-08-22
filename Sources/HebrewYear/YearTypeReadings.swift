import Torah

struct YearTypeReadings {
  private typealias Readings = [[Int: Reading]]
  
  private static let bereshit = reading(for: .bereshit)
  private static let noach = reading(for: .noach)
  private static let lechLecha = reading(for: .lechLecha)
  private static let vayera = reading(for: .vayera)
  private static let chayeiSarah = reading(for: .chayeiSarah)
  private static let toldot = reading(for: .toldot)
  private static let vayetze = reading(for: .vayetze)
  private static let vayishlach = reading(for: .vayishlach)
  private static let vayeshev = reading(for: .vayeshev)
  private static let miketz = reading(for: .miketz)
  private static let vayigash = reading(for: .vayigash)
  private static let vayechi = reading(for: .vayechi)
  
  private static let shemot = reading(for: .shemot)
  private static let vaera = reading(for: .vaera)
  private static let bo = reading(for: .bo)
  private static let beshalach = reading(for: .beshalach)
  private static let yitro = reading(for: .yitro)
  private static let mishpatim = reading(for: .mishpatim)
  private static let terumah = reading(for: .terumah)
  private static let tetzaveh = reading(for: .tetzaveh)
  private static let kiTisa = reading(for: .kiTisa)
  private static let vayakhelPekudei = reading(for: .vayakhelPekudei)
  
  private static let vayikra = reading(for: .vayikra)
  private static let tzav = reading(for: .tzav)
  private static let shemini = reading(for: .shemini)
  private static let tazriaMetzora = reading(for: .tazriaMetzora)
  private static let achareiMotKedoshim = reading(for: .achareiMotKedoshim)
  private static let emor = reading(for: .emor)
  private static let beharBechukotai = reading(for: .beharBechukotai)
  
  private static let bamidbar = reading(for: .bamidbar)
  private static let naso = reading(for: .naso)
  private static let behaalotecha = reading(for: .behaalotecha)
  private static let shelachLecha = reading(for: .shelachLecha)
  private static let korach = reading(for: .korach)
  private static let chukat = reading(for: .chukat)
  private static let balak = reading(for: .balak)
  private static let pinchas = reading(for: .pinchas)
  private static let matotMasei = reading(for: .matotMasei)
  
  private static let devarim = reading(for: .devarim)
  private static let vaetchanan = reading(for: .vaetchanan)
  private static let ekev = reading(for: .ekev)
  private static let reeh = reading(for: .reeh)
  private static let shoftim = reading(for: .shoftim)
  private static let kiTetze = reading(for: .kiTetze)
  private static let kiTavo = reading(for: .kiTavo)
  private static let vayelech = reading(for: .vayelech)
  private static let nitzavimVayelech = reading(for: .nitzavimVayelech)
  private static let haazinu = reading(for: .haazinu)
  private static let vezotHaberachah = reading(for: .vezotHaberachah)
  
  private static func reading(for parshah: ParshahIdentifier) -> Reading {
    ReadingFactory.makeReading(for: parshah)
  }
  
  static func reading(for type: HebrewYear.YearType, month: Int, day: Int) -> Reading? {
    readings(for: type)[month][day]
  }
  
  private static func readings(for type: HebrewYear.YearType) -> Readings {
    switch type {
    case .בחג: return [
      [6: vayelech, 13: haazinu, 23: vezotHaberachah, 27: bereshit],
      [4: noach, 11: lechLecha, 18: vayera, 25: chayeiSarah],
      [3: toldot, 10: vayetze, 17: vayishlach, 24: vayeshev],
      [2: miketz, 9: vayigash, 16: vayechi, 23: shemot],
      [1: vaera, 8: bo, 15: beshalach, 22: yitro, 29: mishpatim],
      [6: terumah, 13: tetzaveh, 20: kiTisa, 27: vayakhelPekudei],
      [5: vayikra, 12: tzav, 26: shemini],
      [3: tazriaMetzora, 10: achareiMotKedoshim, 17: emor, 24: beharBechukotai],
      [2: bamidbar, 9: naso, 16: behaalotecha, 23: shelachLecha, 30: korach],
      [7: chukat, 14: balak, 21: pinchas, 28: matotMasei],
      [6: devarim, 13: vaetchanan, 20: ekev, 27: reeh],
      [4: shoftim, 11: kiTetze, 18: kiTavo, 25: nitzavimVayelech]
    ]
    case .בשה: return [
      [27: bereshit]
    ]
    case .גכה: return [
      [26: bereshit]
    ]
    case .הכז: return [
      [24: bereshit]
    ]
    case .השא: return [
      [24: bereshit]
    ]
    case .זחא: return [
      [29: bereshit]
    ]
    case .זשג: return [
      [29: bereshit]
    ]
    case .בחה: return [
      [27: bereshit]
    ]
    case .בשז: return [
      [27: bereshit]
    ]
    case .גכז: return [
      [26: bereshit]
    ]
    case .החא: return [
      [24: bereshit]
    ]
    case .השג: return [
      [24: bereshit]
    ]
    case .זחג: return [
      [29: bereshit]
    ]
    case .זשה: return [
      [29: bereshit]
    ]
    }
  }
}
