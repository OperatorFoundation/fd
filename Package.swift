// swift-tools-version:5.5
import PackageDescription

let package = Package(
  name: "fd",
  platforms: [.macOS(.v10_15)],
  products: [
    .library(name: "fd", targets: ["fd"])
  ],
  dependencies: [
    .package(url: "https://github.com/kylef/Spectre.git", from: "0.9.0")
  ],
  targets: [
    .target(name: "fd", dependencies: [], path: "Sources"),
    .testTarget(name: "fdTests", dependencies: ["fd", "Spectre"], path: "Tests/fdTests")
  ],
  swiftLanguageVersions: [.v5]
)
