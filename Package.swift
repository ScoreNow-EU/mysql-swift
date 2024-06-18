// swift-tools-version:5.10
import PackageDescription

let package = Package(
    name: "MySQL",
    products: [
        .library(name: "MySQL", targets: ["MySQL"]),
    ],
    dependencies: [
        .package(url: "https://github.com/novi/cmysql.git", from: "2.0.0"),
    ],
    targets: [
        .target(
            name: "SQLFormatter",
            dependencies: []
        ),
        .target(
            name: "MySQL",
            dependencies: ["SQLFormatter", "cmysql"]
        ),
        .testTarget(
            name: "MySQLTests",
            dependencies: ["MySQL"]
        ),
        .testTarget(
            name: "SQLFormatterTests",
            dependencies: ["SQLFormatter"]
        ),
    ],
    swiftLanguageVersions: [.v5]
)
