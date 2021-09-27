import SwiftUI

public extension View {
    /// Sets the cursor to this type while hovering over the view.
    /// - Parameter cursor: The cursor to set.
    func cursor(_ cursor: Cursor) -> some View {
        onHover {
            if $0 {
                Cursor.push(cursor: cursor)
            } else {
                Cursor.pop(cursor: cursor)
            }
        }
    }
}
