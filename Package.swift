// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "TwilioChatClient",
    products: [
        .library(
            name: "TwilioChatClient",
            targets: ["TwilioChatClient"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "TwilioChatClient",
            dependencies: []),
        .testTarget(
            name: "TwilioChatClientTests",
            dependencies: ["TwilioChatClient"])
    ]
)
