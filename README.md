# CursorKit
Cursor control for SwiftUI on macOS.

CursorKit acts as a wrapper around `NSCursor` for SwiftUI, and supports all default cursor types.

## Installation
Install via the Swift Package Manager (`File/Add Packages...`)
```
https://github.com/ryanslikesocool/CursorKit.git
```

## Usage

### Basic
On a SwiftUI view, add the `.cursor(_ :)` modifier and pass in the desired cursor type from the `Cursor` enum.  The cursor will change to match the desired type when hovering over the view, and will reset to the standard arrow when not hovering.

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
This modifier does not work well with moving content.  If you'd like to change the cursor for something like a slider, see Advanced usage below.

### Advanced
More advanced cases can be achieved with the static methods in the `Cursor` enum\
`Cursor.set(cursor:)` - Sets the cursor\
`Cursor.push(cursor:)` - Pushes the cursor onto the stack and makes it active\
`Cursor.pop(cursor:)` - Pops the desired cursor off the stack (not recommended)\
`Cursor.pop()` - Pops the top cursor off the stack\
`Cursor.clear()` - Resets the cursor to the standard arrow\
