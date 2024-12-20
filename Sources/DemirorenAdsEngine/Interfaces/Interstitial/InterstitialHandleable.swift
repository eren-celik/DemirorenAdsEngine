import Foundation
import UIKit

public enum InterstitialError: Error {
    case noAnchorController
    case adNotPresentable(String)
}

/// Type of result from interstitial actions
public typealias CompletionAction = (Result<Void, Error>) -> (Void)

/// Interaction wrapper for interstitials ads
public protocol InterstitialHandleable: AnyObject {
    /// Triggers ad loading. This should be called as soon as possible to prevent latency
    func loadAd()

    /// Shows the ad on full screen. Main thread is highly recommended upon implementation
    /// - Parameter rootViewController: anchor view controller from where the ad will be launched
    func showAd(from rootViewController: UIViewController, onCompletion: @escaping (CompletionAction))
}
