// swift-tools-version:5.1

import PackageDescription

let package = Package(
  name: "HebrewYear",
  products: [
    .library(
      name: "HebrewYear",
      targets: ["HebrewYear"]),
  ],
  targets: [
    .target(name: "HebrewYear"),
    .testTarget(
      name: "HebrewYearTests",
      dependencies: ["HebrewYear"]),
  ]
)
