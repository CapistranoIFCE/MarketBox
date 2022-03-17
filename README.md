Swift Package Manager Project
The Swift Package Manager is a tool for managing distribution of source code, aimed at making it easy to share your code and reuse others’ code. The tool directly addresses the challenges of compiling and linking Swift packages, managing dependencies, versioning, and supporting flexible distribution and collaboration models.
We’ve designed the system to make it easy to share packages on services like GitHub, but packages are also great for private personal development, sharing code within a team, or at any other granularity.
Swift Package Manager includes a build system that can build for macOS and Linux. Starting with Xcode 11, Xcode integrates with SwiftPM to provide support for including packages in iOS, macOS, watchOS, and tvOS applications.
The SourceKit-LSP project leverages libSwiftPM and provides Language Server Protocol implementation for editors that support LSP.


Table of Contents
* Getting Started
* Documentation
* System Requirements
* Installation
* Contributing
* Reporting issues
* License


Getting Started
Please use this guide for learning package manager basics.


Documentation
For Quick Help use the swift package --help command.
For documentation on using Swift Package Manager, creating packages, and more, see the documentation directory.
For documentation on developing the Swift Package Manager itself, see the contribution guide.
For detailed documentation on the package manifest API, see PackageDescription API.
For release notes with information about changes between versions, see the release notes.


System Requirements
The package manager’s system requirements are the same as those for Swift with the caveat that the package manager requires Git at runtime as well as build-time.


Installation
The package manager is available as part the Swift toolchains available on Swift.org) including snapshots for the latest versions built from main branch. For installation instructions for downloaded snapshots, please see the Getting Started section of Swift.org.
The Swift Package Manager is also included in Xcode 8.0 and all subsequent releases.
You can verify your installation by typing swift package --version in a terminal:
$ swift package --version
Apple Swift Package Manager - ...

Contributing
There are several ways to contribute to Swift Package Manager. To learn about the policies, best practices that govern contributions to the Swift project and instructions for setting up the development environment please read the Contributor Guide.
The Swift package manager uses llbuild as the underlying build system for compiling source files. It is also open source and part of the Swift project.


Reporting issues
If you have any trouble with the package manager, help is available. We recommend:
* The Swift Forums,
* Swift's bug tracker
When reporting an issue please follow the bug reporting guidelines, they can be found in contribution guide.
If you’re not comfortable sharing your question with the list, contact details for the code owners can be found in CODEOWNERS; however, the mailing list is usually the best place to go for help.


License
Copyright 2015 - 2020 Apple Inc. and the Swift project authors. Licensed under Apache License v2.0 with Runtime Library Exception.
See https://swift.org/LICENSE.txt for license information.
See https://swift.org/CONTRIBUTORS.txt for Swift project authors.
