// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Song",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Song",
            targets: ["Song"]),
        .library(
            name: "Composition",
            targets: ["Composition"]),
        .library(
            name: "Chorus",
            targets: ["Chorus"]),
        .library(
            name: "Package",
            targets: ["Package"]),
        .executable(
            name: "compose",
            targets: ["compose"]),
        .executable(
            name: "choir",
            targets: ["choir"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/yanagiba/swift-ast", from: "0.4.2"),
        .package(url: "https://github.com/OperatorFoundation/Datable", from: "1.1.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Song",
            dependencies: ["SwiftAST"]),
        .target(
            name: "Composition",
            dependencies: ["Datable"]),
        .target(
            name: "Chorus",
            dependencies: []),
        .target(
            name: "Package",
            dependencies: []),
        .target(
            name: "compose",
            dependencies: ["Composition", "SwiftAST"]),
        .target(
            name: "choir",
            dependencies: ["Chorus", "Datable", "Package", "SwiftAST"]),
        .testTarget(
            name: "SongTests",
            dependencies: ["Song", "Composition"]),
    ],
    swiftLanguageVersions: [4]
)
