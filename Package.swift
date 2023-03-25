// swift-tools-version:5.6

import PackageDescription

let package = Package(
	name: "CursorKit",
	defaultLocalization: "en",
	platforms: [
		.macOS(.v12),
		.iOS(.v15),
		.tvOS(.v15),
		.watchOS(.v8),
	],
	products: [
		.library(
			name: "CursorKit",
			targets: ["CursorKit"]
		),
	],
	targets: [
		.target(
			name: "CursorKit",
			dependencies: []
		),
	]
)
