import PackageDescription

let package = Package(
  name: "iOSSDKTemplate",
  platforms: [.iOS(.v14)],
  products: [
    .library(
      name: "iOSSDKTemplate",
      targets: ["iOSSDKTemplateTarget"]
    )
  ],
  dependencies: [
      // Here we define our package's external dependencies
      // and from where they can be fetched:
      .package(
          url: "https://github.com/ReactiveX/RxSwift.git",
          .upToNextMinor(from: "6.5.0")
      )
  ],
  targets: [
    .target(
      name: "iOSSDKTemplateTarget",
      dependencies: [
        .target(name: "iOSSDKTemplate", condition: .when(platforms: .some([.iOS]))),
        "RxSwift",
        .product(name: "RxCocoa", package: "RxSwift")
      ],
      path: "iOSSDKTemplateTarget"
    ),
    .binaryTarget(
      name: "iOSSDKTemplate",
      path: "iOSSDKTemplate.xcframework"
    ),
  ]
)
