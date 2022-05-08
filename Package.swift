// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TreeSitterSwift",
    platforms: [.macOS(.v10_13), .iOS(.v11)],
    products: [
        .library(name: "TreeSitterSwift", targets: ["TreeSitterSwift"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "TreeSitterSwift",
                path: ".",
                exclude: [
                    "binding.gyp",
                    "bindings",
                    "Cargo.toml",
                    "corpus",
                    "grammar.js",
                    "LICENSE",
                    "Makefile",
                    "package-lock.json",
                    "package.json",
                    "README.md",
                    "scripts",
                    "script-data",
                    "test-npm-package",
                ],
                sources: [
                    "src/parser.c",
                    "src/scanner.c",
                ],
                resources: [
                    .copy("queries")
                ],
                publicHeadersPath: "bindings/swift",
                cSettings: [.headerSearchPath("src")])
    ]
)
