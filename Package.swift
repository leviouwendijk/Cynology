// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Cynology",
    platforms: [
        .macOS(.v13),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Cynology",
            targets: ["Cynology"]
        ),

        // .library(
        //     name: "CynologyFormulas",
        //     targets: ["CynologyFormulas"]
        // ),

        // .library(
        //     name: "CynologyRendering",
        //     targets: ["CynologyRendering"]
        // ),
 
        // .library(
        //     name: "CynologyViews",
        //     targets: ["CynologyViews"]
        // ),
    ],
    dependencies: [
        // .package(url: "https://github.com/leviouwendijk/Primitives.git", branch: "master"),
        // .package(url: "https://github.com/leviouwendijk/Methods.git", branch: "master"),
        .package(url: "https://github.com/leviouwendijk/References.git", branch: "master"),

        // .package(url: "https://github.com/leviouwendijk/Implementations.git", branch: "master"),
        // .package(url: "https://github.com/leviouwendijk/HTML.git", branch: "master"),
        // .package(url: "https://github.com/leviouwendijk/CSS.git", branch: "master"),
        // .package(url: "https://github.com/leviouwendijk/Writers.git", branch: "master"),
        // // .package(url: "https://github.com/leviouwendijk/Terminal.git", branch: "master"),

        // .package(url: "https://github.com/leviouwendijk/Interfaces.git", branch: "master"),
    ],
    targets: [
        .target(
            name: "Cynology",
            dependencies: [
                .product(name: "References", package: "References"),
            ],
        ),

//         // ── Formulas ────────────────────────────────────────────
//         // Turns Cynology types into pricable programs.
//         .target(
//             name: "CynologyFormulas",
//             dependencies: [
//                 "Cynology",
//             ],
//         ),

//         // ── Rendering ────────────────────────────────────────────
//         // Turns Cynology types into HTML documents.
//         // Imports the HTML DSL for static output generation.
//         // Use case: quote PDF, curriculum document, program overview.
//         .target(
//             name: "CynologyRendering",
//             dependencies: [
//                 "Cynology",
//                 "CynologyFormulas",
//                 // .product(name: "Primitives", package: "Primitives"),
//                 // .product(name: "Methods", package: "Methods"),
//                 .product(name: "Implementations", package: "Implementations"),
//                 .product(name: "HTML", package: "HTML"),
//                 .product(name: "CSS", package: "CSS"),
//                 .product(name: "Writers", package: "Writers"),
//                 // .product(name: "Terminal", package: "Terminal"),

//                 .product(name: "Interfaces", package: "Interfaces"),
//             ],
//         ),
 
//         // ── Views ────────────────────────────────────────────────
//         // Interactive SwiftUI.
//         // Use case: quote builder UI, frame picker, program editor.
//         .target(
//             name: "CynologyViews",
//             dependencies: [
//                 "Cynology",
//                 "CynologyFormulas",
//             ],
//         ),
    ]
)
