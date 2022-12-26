#if canImport(AppKit)
    import AppKit
    import SwiftUI

    /// A pointer (also called a cursor).  The contained values map directly to ``AppKit.NSCursor`` values.
    public enum Cursor {
        /// The default cursor, the arrow cursor.  Corresponds to ``NSCursor.arrow``.
        case arrow

        /// The pointing-hand system cursor.  Corresponds to ``NSCursor.pointingHand``.
        case pointingHand

        /// The open-hand system cursor.  Corresponds to ``NSCursor.openHand``.
        case openHand

        /// The closed-hand system cursor.  Corresponds to ``NSCursor.closedHand``.
        case closedHand

        /// The resize-left system cursor.  Corresponds to ``NSCursor.resizeLeft``.
        case resizeLeft

        /// The resize-right system cursor.  Corresponds to ``NSCursor.resizeRight``.
        case resizeRight

        /// The resize-left-and-right system cursor.  Corresponds to ``NSCursor.resizeLeftRight``.
        case resizeLeftRight

        /// The resize-up system cursor.  Corresponds to ``NSCursor.resizeUp``.
        case resizeUp

        /// The resize-down system cursor.  Corresponds to ``NSCursor.resizeDown``.
        case resizeDown

        /// The resize-up-and-down system cursor.  Corresponds to ``NSCursor.resizeUpDown``.
        case resizeUpDown

        /// A cursor indicating that the current operation will result in a link action.  Corresponds to ``NSCursor.dragLink``.
        case dragLink

        /// A cursor indicating that the current operation will result in a copy action.  Corresponds to ``NSCursor.dragCopy``.
        case dragCopy

        /// The cross-hair system cursor.  Corresponds to ``NSCursor.crosshair``.
        case crosshair

        /// The contextual menu system cursor.  Corresponds to ``NSCursor.contextualMenu``.
        case contextualMenu

        /// A cursor indicating that the current operation will result in a disappearing item.  Corresponds to ``NSCursor.disappearingItem``.
        case disappearingItem

        /// The operation not allowed cursor.  Corresponds to ``NSCursor.operationNotAllowed``.
        case operationNotAllowed

        /// A cursor that looks like a capital I with a tiny crossbeam at its middle.  Corresponds to ``NSCursor.iBeam``.
        case iBeam

        /// The cursor for editing vertical layout text.  Corresponds to ``NSCursor.iBeamCursorForVerticalLayout``.
        case iBeamCursorForVerticalLayout

        /// The ``AppKit.NSCursor`` equivalent for the ``Cursor`` value.
        internal var native: NSCursor {
            switch self {
                case .arrow: return NSCursor.arrow
                case .pointingHand: return NSCursor.pointingHand
                case .openHand: return NSCursor.openHand
                case .closedHand: return NSCursor.closedHand
                case .resizeLeft: return NSCursor.resizeLeft
                case .resizeRight: return NSCursor.resizeRight
                case .resizeLeftRight: return NSCursor.resizeLeftRight
                case .resizeUp: return NSCursor.resizeUp
                case .resizeDown: return NSCursor.resizeDown
                case .resizeUpDown: return NSCursor.resizeUpDown
                case .dragLink: return NSCursor.dragLink
                case .dragCopy: return NSCursor.dragCopy
                case .crosshair: return NSCursor.crosshair
                case .contextualMenu: return NSCursor.contextualMenu
                case .disappearingItem: return NSCursor.disappearingItem
                case .operationNotAllowed: return NSCursor.operationNotAllowed
                case .iBeam: return NSCursor.iBeam
                case .iBeamCursorForVerticalLayout: return NSCursor.iBeamCursorForVerticalLayout
            }
        }
    }

    public extension View {
        /// Sets the system cursor when hovering over a view.
        ///
        /// Apply the `contentShape` modifier before the `cursor` modifier for better compatability with custom views.
        /// - Parameter cursor: The cursor to set.
        func cursor(_ cursor: Cursor) -> some View {
            onHover { hovering in
                if hovering {
                    cursor.native.push()
                } else {
                    NSCursor.pop()
                }
            }
        }
    }
#endif
