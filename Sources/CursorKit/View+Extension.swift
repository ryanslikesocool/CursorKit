import SwiftUI

public extension View {
	/// Sets the system cursor when hovering over a view.
	///
	/// Apply the `contentShape` modifier before the `cursor` modifier for better compatability with custom views.
	/// - Parameter cursor: The cursor to set.
	func cursor(_ cursor: Cursor) -> some View {
		/// The preprocessor here isn't *necessary* due to the preprocessors in the `push` and `pop` functions, but cuts out the `onHover` computations.
		#if canImport(AppKit)
			onHover { hovering in
				if hovering {
					cursor.push()
				} else {
					Cursor.pop()
				}
			}
		#else
			self
		#endif
	}
}
