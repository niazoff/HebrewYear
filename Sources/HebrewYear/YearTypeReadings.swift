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
  private static let vayakhel = reading(for: .vayakhel)
  private static let pekudei = reading(for: .pekudei)
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
  private static let chukatBalak = reading(for: .chukatBalak)
  private static let pinchas = reading(for: .pinchas)
  private static let matotMasei = reading(for: .matotMasei)
  
  private static let devarim = reading(for: .devarim)
  private static let vaetchanan = reading(for: .vaetchanan)
  private static let ekev = reading(for: .ekev)
  private static let reeh = reading(for: .reeh)
  private static let shoftim = reading(for: .shoftim)
  private static let kiTetze = reading(for: .kiTetze)
  private static let kiTavo = reading(for: .kiTavo)
  private static let nitzavim = reading(for: .nitzavim)
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
      [6: vayelech, 13: haazinu, 23: vezotHaberachah, 27: bereshit],
      [4: noach, 11: lechLecha, 18: vayera, 25: chayeiSarah],
      [2: toldot, 9: vayetze, 16: vayishlach, 23: vayeshev, 30: miketz],
      [7: vayigash, 14: vayechi, 21: shemot, 28: vaera],
      [6: bo, 13: beshalach, 20: yitro, 27: mishpatim],
      [4: terumah, 11: tetzaveh, 18: kiTisa, 25: vayakhelPekudei],
      [3: vayikra, 10: tzav, 24: shemini],
      [1: tazriaMetzora, 8: achareiMotKedoshim, 15: emor,
       22: beharBechukotai, 29: bamidbar],
      [14: naso, 21: behaalotecha, 28: shelachLecha],
      [5: korach, 12: chukatBalak, 19: pinchas, 26: matotMasei],
      [4: devarim, 11: vaetchanan, 18: ekev, 25: reeh],
      [2: shoftim, 9: kiTetze, 16: kiTavo, 23: nitzavimVayelech]
    ]
    case .גכה: return [
      [5: vayelech, 12: haazinu, 23: vezotHaberachah, 26: bereshit],
      [3: noach, 10: lechLecha, 17: vayera, 24: chayeiSarah],
      [2: toldot, 9: vayetze, 16: vayishlach, 23: vayeshev, 30: miketz],
      [7: vayigash, 14: vayechi, 21: shemot, 28: vaera],
      [6: bo, 13: beshalach, 20: yitro, 27: mishpatim],
      [4: terumah, 11: tetzaveh, 18: kiTisa, 25: vayakhelPekudei],
      [3: vayikra, 10: tzav, 24: shemini],
      [1: tazriaMetzora, 8: achareiMotKedoshim, 15: emor,
       22: beharBechukotai, 29: bamidbar],
      [14: naso, 21: behaalotecha, 28: shelachLecha],
      [5: korach, 12: chukatBalak, 19: pinchas, 26: matotMasei],
      [4: devarim, 11: vaetchanan, 18: ekev, 25: reeh],
      [2: shoftim, 9: kiTetze, 16: kiTavo, 23: nitzavimVayelech]
    ]
    case .הכז: return [
      [3: haazinu, 23: vezotHaberachah, 24: bereshit],
      [1: noach, 8: lechLecha, 15: vayera, 22: chayeiSarah, 29: toldot],
      [7: vayetze, 14: vayishlach, 21: vayeshev, 28: miketz],
      [5: vayigash, 12: vayechi, 19: shemot, 26: vaera],
      [4: bo, 11: beshalach, 18: yitro, 25: mishpatim],
      [2: terumah, 9: tetzaveh, 16: kiTisa, 23: vayakhelPekudei],
      [1: vayikra, 8: tzav, 29: shemini],
      [6: tazriaMetzora, 13: achareiMotKedoshim, 20: emor, 27: beharBechukotai],
      [5: bamidbar, 12: naso, 19: behaalotecha, 26: shelachLecha],
      [3: korach, 10: chukat, 17: balak, 24: pinchas],
      [2: matotMasei, 9: devarim, 16: vaetchanan, 23: ekev, 30: reeh],
      [7: shoftim, 14: kiTetze, 21: kiTavo, 28: nitzavim]
    ]
    case .השא: return [
      [3: haazinu, 23: vezotHaberachah, 24: bereshit],
      [1: noach, 8: lechLecha, 15: vayera, 22: chayeiSarah, 29: toldot],
      [6: vayetze, 13: vayishlach, 20: vayeshev, 27: miketz],
      [4: vayigash, 11: vayechi, 18: shemini, 25: vaera],
      [3: bo, 10: beshalach, 17: yitro, 24: mishpatim],
      [1: terumah, 8: tetzaveh, 15: kiTisa, 22: vayakhel, 29: pekudei],
      [7: vayikra, 14: tzav, 28: shemini],
      [5: tazriaMetzora, 12: achareiMotKedoshim, 19: emor, 26: beharBechukotai],
      [4: bamidbar, 11: naso, 18: behaalotecha, 25: shelachLecha],
      [2: korach, 9: chukat, 16: balak, 23: pinchas],
      [1: matotMasei, 8: devarim, 15: vaetchanan, 22: ekev, 29: reeh],
      [6: shoftim, 13: kiTetze, 20: kiTavo, 27: nitzavim]
    ]
    case .זחא: return [
      [8: haazinu, 23: vezotHaberachah, 29: bereshit],
      [6: noach, 13: lechLecha, 20: vayera, 27: chayeiSarah],
      [5: toldot, 12: vayetze, 19: vayishlach, 26: vayeshev],
      [4: miketz, 11: vayigash, 18: vayechi, 25: shemot],
      [3: vaera, 10: bo, 17: beshalach, 24: yitro],
      [1: mishpatim, 8: terumah, 15: tetzaveh, 22: kiTisa, 29: vayakhelPekudei],
      [7: vayikra, 14: tzav, 28: shemini],
      [5: tazriaMetzora, 12: achareiMotKedoshim, 19: emor, 26: beharBechukotai],
      [4: bamidbar, 11: naso, 18: behaalotecha, 25: shelachLecha],
      [2: korach, 9: chukat, 16: balak, 23: pinchas],
      [1: matotMasei, 8: devarim, 15: vaetchanan, 22: ekev, 29: reeh],
      [6: shoftim, 13: kiTetze, 20: kiTavo, 27: nitzavim]
    ]
    case .זשג: return [
      [8: haazinu, 23: vezotHaberachah, 29: bereshit],
      [6: noach, 13: lechLecha, 20: vayera, 27: chayeiSarah],
      [4: toldot, 11: vayetze, 18: vayishlach, 25: vayeshev],
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
