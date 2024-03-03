// swift-tools-version:5.3

// Copyright 2021 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import PackageDescription

let package = Package(
  name: "OpenWebSDK",
  platforms: [.iOS(.v14)],
  products: [
    .library(
      name: "OpenWebSDK",
      targets: ["iOSSDKTemplateTarget"]
    )
  ],
  dependencies: [
      // Here we define our package's external dependencies
      // and from where they can be fetched:
      .package(
          url: "https://github.com/ReactiveX/RxSwift.git",
          .upToNextMinor(from: "6.5.0")
      ),
    .package(
        url: "https://github.com/Giphy/giphy-ios-sdk.git",
        .upToNextMajor(from: "2.2.8")
    )
  ],
  targets: [
    .target(
      name: "iOSSDKTemplateTarget",
      dependencies: [
        .target(name: "OpenWebSDK", condition: .when(platforms: [.iOS])),
        .product(name: "RxSwift-Dynamic", package: "RxSwift"),
        .product(name: "RxCocoa-Dynamic", package: "RxSwift"),
        .product(name: "RxRelay-Dynamic", package: "RxSwift"),
      ],
      path: "iOSSDKTemplateTarget"
    ),
    .binaryTarget(
      name: "OpenWebSDK",
      path: "OpenWebSDK.xcframework"
    ),
  ]
)
