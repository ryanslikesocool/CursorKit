// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CursorKit",
	platforms: [.macOS(.v10_15)],
    products: [
        .library(
            name: "CursorKit",
            targets: ["CursorKit"]),
    ],
    targets: [
        .target(
            name: "CursorKit",
            dependencies: [])
    ]
)
