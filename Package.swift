// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "led-blink",
    dependencies: [
	.package(url: "https://github.com/uraimo/SwiftyGPIO.git", from: "1.0.0"),
    .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "4.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .executableTarget(
            name: "led-blink",
            dependencies: [.product(name: "SwiftyGPIO", package:"SwiftyGPIO") ]),
        
            .target(
                        name: "SwiftyGPIO",
                        dependencies: ["SwiftyJSON"]),
        .testTarget(
            name: "led-blinkTests",
            dependencies: ["led-blink"]),
    ]
)
