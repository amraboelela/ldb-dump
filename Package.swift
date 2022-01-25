// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ldbdump",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ldbdump",
            targets: ["ldbdump"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/amraboelela/SwiftLevelDB", .branch("master"))
    ],
    
    targets: [
        .target(name: "ldbdump", dependencies: ["SwiftLevelDB"]),
        .testTarget(name: "ldbdumpTests", dependencies: ["ldbdump"]),
    ]
)
