// swift-tools-version: 5.5

import PackageDescription

let package = Package(
    name: "tuist-module-plugin",
    platforms: [.macOS(.v12)],
    products: [
        .library(
            name: "tuist-module-plugin",
            targets: ["ModulePlugin"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/tuist/projectdescription", from: "3.22.0"),
    ],
    targets: [
        .target(
            name: "ModulePlugin",
            dependencies: [
                .product(name: "ProjectDescription", package: "ProjectDescription"),
            ],
            path: "ProjectDescriptionHelpers"
        ),
        .testTarget(
            name: "ModulePluginTests",
            dependencies: ["ModulePlugin"],
            path: "Tests"
        ),
    ]
)
