# CursorKit
Set cursors in SwiftUI on macOS.

CursorKit acts as a wrapper around `NSCursor` for SwiftUI, and supports all default cursor types.

## Installation
Install via the Swift Package Manager (`File/Add Packages...`)
```
https://github.com/ryanslikesocool/CursorKit.git
```
or as a package dependency
```swift
.package(url: "https://github.com/ryanslikesocool/CursorKit.git", from: "1.1.0")
```

## Usage

### Basic
On a SwiftUI view, add the `cursor(_:)` modifier and pass in the desired cursor type from the `Cursor` enum.  The cursor will change to match the desired type when hovering over the view, and will reset to the standard arrow when not hovering.
```swift
import SwiftUI
import CursorKit

struct ContentView: View {
	var body: some View {
		RoundedRectangle(cornerRadius: 16)
			.frame(width: 64, height: 64)
			.cursor(.pointingHand) // <- Here! 
	}
}
```

For better compatability with custom views and stacks, apply the `contentShape(_:)` modifier before the `cursor(_:)` modifier.
```swift
import SwiftUI
import CursorKit

struct ContentView: View {
	var body: some View {
		HStack { 
			Image(systemName: "arrow.left")
			Text("Left and Right")
			Image(systemName: "arrow.right")
		}
		.contentShape(Rectangle()) // <- Set the hover test area to the entire stack, rather than just the visible parts
		.cursor(.resizeLeftRight)
	}
}
```
