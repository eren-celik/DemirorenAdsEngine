import Foundation
import UIKit

/// Interaction wrapper for banner ads
public protocol BannerAdable {
    /// Ad identifier
    var identifier: String { get }

    /// Ad's view reference.
    var bannerView: UIView { get set }

    /// Ad's delegate. Once set, it binds with the 3rd-party ad's interaction delegate
    var adDelegate: AdInteractable? { get set }

    /// Initializes the ad
    /// - Parameter view: container view where the ad will be placed.
    func initBannerToBeIncluded(in view: UIView)

    /// Triggers ad loading. This should be called as soon as possible to prevent latency
    /// - Parameter rootViewController: anchor view controller from where the ad will be shown
    func loadAd(for rootViewController: UIViewController)
}
