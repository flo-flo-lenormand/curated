# Media Upload Live Activity Prototype

This repository contains example SwiftUI code for an iOS app and Live Activity widget extension. It demonstrates how a Live Activity could look while media are uploading.

## Features
- **Dynamic Island support** following Apple's Human Interface Guidelines.
- Shows a logo on the left, text "Media are uploading" in the center, and a circular loader on the right when expanded.
- In the minimal state (unexpanded Dynamic Island) only the logo and loader are visible.
- The loader animates for 90 seconds as a prototype.

## Usage
1. Install [Xcode](https://developer.apple.com/xcode/).
2. Create a new iOS app project with a widget extension (using SwiftUI & ActivityKit).
3. Replace the generated source files with the contents of this repository:
   - `Shared/MediaUploadActivity.swift`
   - `MediaUploadApp/MediaUploadApp.swift`
   - `MediaUploadApp/Info.plist`
   - `MediaUploadWidget/MediaUploadWidget.swift`
   - `MediaUploadWidget/Info.plist`
4. Build and run the project on a device or simulator supporting Live Activities (iOS 16.1+).

This code does not rely on any backend or external data and is intended purely for prototyping the UI.
