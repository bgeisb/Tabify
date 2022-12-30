// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Tabify",
    platforms: [
        .iOS(.v13),
        .macOS(.v11)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Tabify",
            targets: ["Tabify"]),
    ],
    targets: [
        .target(
            name: "Tabify",
            dependencies: []
        ),
    ]
)
