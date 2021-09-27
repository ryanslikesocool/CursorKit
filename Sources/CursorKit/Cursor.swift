import AppKit

public enum Cursor {
    /// Corresponds to ``NSCursor.arrow``
    case arrow
    /// Corresponds to ``NSCursor.iBeam``
    case iBeam
    /// Corresponds to ``NSCursor.crossHair``
    case crossHair

    /// Corresponds to ``NSCursor.closedHand``
    case closedHand
    /// Corresponds to ``NSCursor.openHand``
    case openHand
    /// Corresponds to ``NSCursor.pointingHand``
    case pointingHand

    /// Corresponds to ``NSCursor.resizeLeft``
    case resizeLeft
    /// Corresponds to ``NSCursor.resizeRight``
    case resizeRight
    /// Corresponds to ``NSCursor.resizeLeftRight``
    case resizeLeftRight

    /// Corresponds to ``NSCursor.resizeUp``
    case resizeUp
    /// Corresponds to ``NSCursor.resizeDown``
    case resizeDown
    /// Corresponds to ``NSCursor.resizeUpDown``
    case resizeUpDown

    /// Corresponds to ``NSCursor.disappearingItem``
    case disappearingItem
    /// Corresponds to ``NSCursor.iBeamCursorForVerticalLayout``
    case iBeamCursorForVerticalLayout
    /// Corresponds to ``NSCursor.operationNotAllowed``
    case operationNotAllowed
    /// Corresponds to ``NSCursor.dragLink``
    case dragLink
    /// Corresponds to ``NSCursor.dragCopy``
    case dragCopy
    /// Corresponds to ``NSCursor.contextualMenu``
    case contextualMenu

    var rawValue: NSCursor {
        switch self {
        case .arrow: return NSCursor.arrow
        case .iBeam: return NSCursor.iBeam
        case .crossHair: return NSCursor.crosshair

        case .closedHand: return NSCursor.closedHand
        case .openHand: return NSCursor.openHand
        case .pointingHand: return NSCursor.pointingHand

        case .resizeLeft: return NSCursor.resizeLeft
        case .resizeRight: return NSCursor.resizeRight
        case .resizeLeftRight: return NSCursor.resizeLeftRight

        case .resizeUp: return NSCursor.resizeUp
        case .resizeDown: return NSCursor.resizeDown
        case .resizeUpDown: return NSCursor.resizeUpDown

        case .disappearingItem: return NSCursor.disappearingItem
        case .iBeamCursorForVerticalLayout: return NSCursor.iBeamCursorForVerticalLayout
        case .operationNotAllowed: return NSCursor.operationNotAllowed
        case .dragLink: return NSCursor.dragLink
        case .dragCopy: return NSCursor.dragCopy
        case .contextualMenu: return NSCursor.contextualMenu
        }
    }

    /// Replaces the active cursor with the input cursor.
    /// - Parameter cursor: The new cursor to use.
    public static func set(cursor: Cursor) { cursor.rawValue.set() }

    /// Pushes a new cursor to the stack, making it active.
    /// - Parameter cursor: The cursor to push.
    public static func push(cursor: Cursor) { cursor.rawValue.push() }

    /// Pops the cursor off the stack.  It's recommended to use ``pop()`` instead.
    /// - Parameter cursor: The cursor to pop.
    public static func pop(cursor: Cursor) { cursor.rawValue.pop() }

    /// Pops the active cursor off the stack.
    public static func pop() { NSCursor.pop() }

    /// Resets the cursor to the default arrow.
    public static func clear() { set(cursor: .arrow) }
}
