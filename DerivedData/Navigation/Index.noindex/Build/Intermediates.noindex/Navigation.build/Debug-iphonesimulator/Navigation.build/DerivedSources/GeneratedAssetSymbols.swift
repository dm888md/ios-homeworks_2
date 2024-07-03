import Foundation
#if canImport(AppKit)
import AppKit
#endif
#if canImport(UIKit)
import UIKit
#endif
#if canImport(SwiftUI)
import SwiftUI
#endif
#if canImport(DeveloperToolsSupport)
import DeveloperToolsSupport
#endif

#if SWIFT_PACKAGE
private let resourceBundle = Foundation.Bundle.module
#else
private class ResourceBundleClass {}
private let resourceBundle = Foundation.Bundle(for: ResourceBundleClass.self)
#endif

// MARK: - Color Symbols -

@available(iOS 11.0, macOS 10.13, tvOS 11.0, *)
extension ColorResource {

    /// The "vkBrandColor" asset catalog color resource.
    static let vkBrand = ColorResource(name: "vkBrandColor", bundle: resourceBundle)

}

// MARK: - Image Symbols -

@available(iOS 11.0, macOS 10.7, tvOS 11.0, *)
extension ImageResource {

    /// The "1" asset catalog image resource.
    static let _1 = ImageResource(name: "1", bundle: resourceBundle)

    /// The "10" asset catalog image resource.
    static let _10 = ImageResource(name: "10", bundle: resourceBundle)

    /// The "11" asset catalog image resource.
    static let _11 = ImageResource(name: "11", bundle: resourceBundle)

    /// The "12" asset catalog image resource.
    static let _12 = ImageResource(name: "12", bundle: resourceBundle)

    /// The "13" asset catalog image resource.
    static let _13 = ImageResource(name: "13", bundle: resourceBundle)

    /// The "14" asset catalog image resource.
    static let _14 = ImageResource(name: "14", bundle: resourceBundle)

    /// The "15" asset catalog image resource.
    static let _15 = ImageResource(name: "15", bundle: resourceBundle)

    /// The "16" asset catalog image resource.
    static let _16 = ImageResource(name: "16", bundle: resourceBundle)

    /// The "17" asset catalog image resource.
    static let _17 = ImageResource(name: "17", bundle: resourceBundle)

    /// The "18" asset catalog image resource.
    static let _18 = ImageResource(name: "18", bundle: resourceBundle)

    /// The "19" asset catalog image resource.
    static let _19 = ImageResource(name: "19", bundle: resourceBundle)

    /// The "2" asset catalog image resource.
    static let _2 = ImageResource(name: "2", bundle: resourceBundle)

    /// The "20" asset catalog image resource.
    static let _20 = ImageResource(name: "20", bundle: resourceBundle)

    /// The "3" asset catalog image resource.
    static let _3 = ImageResource(name: "3", bundle: resourceBundle)

    /// The "4" asset catalog image resource.
    static let _4 = ImageResource(name: "4", bundle: resourceBundle)

    /// The "5" asset catalog image resource.
    static let _5 = ImageResource(name: "5", bundle: resourceBundle)

    /// The "6" asset catalog image resource.
    static let _6 = ImageResource(name: "6", bundle: resourceBundle)

    /// The "7" asset catalog image resource.
    static let _7 = ImageResource(name: "7", bundle: resourceBundle)

    /// The "8" asset catalog image resource.
    static let _8 = ImageResource(name: "8", bundle: resourceBundle)

    /// The "9" asset catalog image resource.
    static let _9 = ImageResource(name: "9", bundle: resourceBundle)

    /// The "blue_pixel" asset catalog image resource.
    static let bluePixel = ImageResource(name: "blue_pixel", bundle: resourceBundle)

    /// The "post1" asset catalog image resource.
    static let post1 = ImageResource(name: "post1", bundle: resourceBundle)

    /// The "post2" asset catalog image resource.
    static let post2 = ImageResource(name: "post2", bundle: resourceBundle)

    /// The "post3" asset catalog image resource.
    static let post3 = ImageResource(name: "post3", bundle: resourceBundle)

    /// The "post4" asset catalog image resource.
    static let post4 = ImageResource(name: "post4", bundle: resourceBundle)

    /// The "teo" asset catalog image resource.
    static let teo = ImageResource(name: "teo", bundle: resourceBundle)

    /// The "vkLogo" asset catalog image resource.
    static let vkLogo = ImageResource(name: "vkLogo", bundle: resourceBundle)

}

// MARK: - Backwards Deployment Support -

/// A color resource.
struct ColorResource: Swift.Hashable, Swift.Sendable {

    /// An asset catalog color resource name.
    fileprivate let name: Swift.String

    /// An asset catalog color resource bundle.
    fileprivate let bundle: Foundation.Bundle

    /// Initialize a `ColorResource` with `name` and `bundle`.
    init(name: Swift.String, bundle: Foundation.Bundle) {
        self.name = name
        self.bundle = bundle
    }

}

/// An image resource.
struct ImageResource: Swift.Hashable, Swift.Sendable {

    /// An asset catalog image resource name.
    fileprivate let name: Swift.String

    /// An asset catalog image resource bundle.
    fileprivate let bundle: Foundation.Bundle

    /// Initialize an `ImageResource` with `name` and `bundle`.
    init(name: Swift.String, bundle: Foundation.Bundle) {
        self.name = name
        self.bundle = bundle
    }

}

#if canImport(AppKit)
@available(macOS 10.13, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

    /// Initialize a `NSColor` with a color resource.
    convenience init(resource: ColorResource) {
        self.init(named: NSColor.Name(resource.name), bundle: resource.bundle)!
    }

}

protocol _ACResourceInitProtocol {}
extension AppKit.NSImage: _ACResourceInitProtocol {}

@available(macOS 10.7, *)
@available(macCatalyst, unavailable)
extension _ACResourceInitProtocol {

    /// Initialize a `NSImage` with an image resource.
    init(resource: ImageResource) {
        self = resource.bundle.image(forResource: NSImage.Name(resource.name))! as! Self
    }

}
#endif

#if canImport(UIKit)
@available(iOS 11.0, tvOS 11.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    /// Initialize a `UIColor` with a color resource.
    convenience init(resource: ColorResource) {
#if !os(watchOS)
        self.init(named: resource.name, in: resource.bundle, compatibleWith: nil)!
#else
        self.init()
#endif
    }

}

@available(iOS 11.0, tvOS 11.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    /// Initialize a `UIImage` with an image resource.
    convenience init(resource: ImageResource) {
#if !os(watchOS)
        self.init(named: resource.name, in: resource.bundle, compatibleWith: nil)!
#else
        self.init()
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.Color {

    /// Initialize a `Color` with a color resource.
    init(_ resource: ColorResource) {
        self.init(resource.name, bundle: resource.bundle)
    }

}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.Image {

    /// Initialize an `Image` with an image resource.
    init(_ resource: ImageResource) {
        self.init(resource.name, bundle: resource.bundle)
    }

}
#endif