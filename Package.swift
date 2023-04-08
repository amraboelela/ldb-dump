// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HaneinWebserver",
    platforms: [
       .macOS(.v12)
    ],
    dependencies: [
        .package(url: "https://github.com/amraboelela/SwiftLevelDB", .branch("master"))
    ],
    targets: [
        .executableTarget(name: "ldbdump", dependencies: [
            .product(name: "SwiftLevelDB", package: "SwiftLevelDB"),
        ]),
        .testTarget(name: "ldbdumpTests", dependencies: ["ldbdump"]),
    ]
)
