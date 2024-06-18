// swift-tools-version:5.10
import PackageDescription

let package = Package(
    name: "MySQLSwift",
    products: [
        .library(name: "MySQLSwift", targets: ["MySQLSwift"]),
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
            name: "MySQLSwift",
            dependencies: ["SQLFormatter", "CMySQL"]
        ),
        .testTarget(
            name: "MySQLSwiftTests",
            dependencies: ["MySQLSwift"]
        ),
        .testTarget(
            name: "SQLFormatterTests",
            dependencies: ["SQLFormatter"]
        ),
    ],
    swiftLanguageVersions: [.v5]
)
