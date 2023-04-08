// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ldbdump",
    platforms: [
        .macOS(.v11)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .executable(
            name: "ldbdump",
            targets: ["ldbdump"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/amraboelela/SwiftLevelDB", .branch("master"))
    ],targets: [
        .executableTarget(name: "ldbdump", dependencies: [
            .product(name: "SwiftLevelDB", package: "SwiftLevelDB"),
        ]),
        .testTarget(name: "ldbdumpTests", dependencies: ["ldbdump"]),
    ]
)
