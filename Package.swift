import PackageDescription

let package = Package(
    name: "LDBDump",
    dependencies: [
        .Package(url: "https://github.com/amraboelela/SwiftLevelDB", majorVersion: 1)
    ]
)
