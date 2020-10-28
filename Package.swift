// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Instabug",
    products: [
        .library(
            name: "Instabug",
            targets: ["Instabug"])
    ],
    targets: [
        .binaryTarget(
            name: "Instabug",
            url: "https://ios-releases.instabug.com/release/xcframework/10.0.2/archive.zip",
            checksum: "d0e6a915fd35a7f1a50b0edd0d32a12946073e677928d562f61b462ae3be901c")
    ]
)
