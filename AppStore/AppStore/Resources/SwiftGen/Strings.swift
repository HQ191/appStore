// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {
  internal enum Apps {
    /// Apps
    internal static let title = L10n.tr("Apps", "title", fallback: "Apps")
    internal enum Button {
      /// See all
      internal static let seeAll = L10n.tr("Apps", "button.see_all", fallback: "See all")
    }
  }
  internal enum AppStateButton {
    /// In-App Purchases
    internal static let inappPurchase = L10n.tr("AppStateButton", "inapp_purchase", fallback: "In-App Purchases")
    internal enum Button {
      /// Get
      internal static let `get` = L10n.tr("AppStateButton", "button.get", fallback: "Get")
      /// Open
      internal static let `open` = L10n.tr("AppStateButton", "button.open", fallback: "Open")
      /// Update
      internal static let update = L10n.tr("AppStateButton", "button.update", fallback: "Update")
    }
  }
  internal enum QuickLinksView {
    /// Quick Links
    internal static let title = L10n.tr("QuickLinksView", "title", fallback: "Quick Links")
    internal enum Button {
      /// Add Funds to Apple ID
      internal static let addFunds = L10n.tr("QuickLinksView", "button.add_funds", fallback: "Add Funds to Apple ID")
      /// Redeem
      internal static let redeem = L10n.tr("QuickLinksView", "button.redeem", fallback: "Redeem")
      /// Send Gift
      internal static let sendGift = L10n.tr("QuickLinksView", "button.send_gift", fallback: "Send Gift")
    }
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
