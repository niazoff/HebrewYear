// swift-tools-version:5.1

import PackageDescription

let package = Package(
  name: "HebrewYear",
  products: [
    .library(
      name: "HebrewYear",
      targets: ["HebrewYear"]),
  ],
  dependencies: [
    .package(url: "https://github.com/niazoff/Torah.git", .branch("master"))
  ],
  targets: [
    .target(name: "HebrewYear", dependencies: ["Torah"]),
    .testTarget(
      name: "HebrewYearTests",
      dependencies: ["HebrewYear"]),
  ]
)
