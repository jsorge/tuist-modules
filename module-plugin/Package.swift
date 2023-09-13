// swift-tools-version: 5.5

import PackageDescription

let package = Package(
    name: "module-plugin",
    platforms: [.macOS(.v12)],
    products: [
        .library(
            name: "tuist-module-plugin",
            targets: ["ModulePlugin"]),
    ],
    targets: [
        .target(
            name: "ModulePlugin"),
        .testTarget(
            name: "ModulePluginTests",
            dependencies: ["ModulePlugin"]),
    ]
)
