// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "swift-website-dsl",
    products: [
        .library(
            name: "SwiftWebsiteDSL",
            targets: ["SwiftWebsiteDSL"]
        ),
        .executable(
            name: "ExampleSwiftWebsite",
            targets: ["ExampleSwiftWebsite"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/pointfreeco/swift-snapshot-testing.git",
            from: "1.10.0"
        ),
    ],
    targets: [
        .target(
            name: "SwiftWebsiteDSL",
            dependencies: [],
            path: "Modules/SwiftWebsiteDSL/src"
        ),
        .testTarget(
            name: "SwiftWebsiteDSLTest",
            dependencies: [
                "SwiftWebsiteDSL",
                .product(name: "SnapshotTesting", package: "swift-snapshot-testing"),
            ],
            path: "Modules/SwiftWebsiteDSL/Tests",
            exclude: ["__Snapshots__"]
        ),
        .executableTarget(
            name: "ExampleSwiftWebsite",
            dependencies: [
                "SwiftWebsiteDSL",
            ],
            path: "Modules/ExampleSwiftWebsite/src"
        ),
    ]
)
