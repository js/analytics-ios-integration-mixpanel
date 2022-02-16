// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SegmentMixpanel",
    platforms: [.iOS(.v10), .tvOS(.v10), .macOS(.v10_13)],
    products: [
        .library(name: "SegmentMixpanel", targets: ["SegmentMixpanel"]),
    ],
    dependencies: [
        .package(url: "https://github.com/segmentio/analytics-ios", from: "4.1.4"),
        .package(url: "https://github.com/mixpanel/mixpanel-iphone", from: "4.1.0")
    ],
    targets: [
        .target(
            name: "SegmentMixpanel",
            dependencies: [],
            path: "Pod/Classes/",
            publicHeadersPath: "Pod/Classes",
            cSettings: [
                .headerSearchPath("Pod/Classes"),
            ]),
    ]
)
