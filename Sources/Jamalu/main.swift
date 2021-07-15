import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct Jamalu: Website {
    enum SectionID: String, WebsiteSectionID {
        case about
        case impressum
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://jamalu.de")!
    var name = "JAMALU"
    var description = "Welcome"
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try Jamalu().publish(withTheme: .foundation)
