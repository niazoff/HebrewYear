// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "HebrewYear",
  platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .watchOS(.v6)],
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
