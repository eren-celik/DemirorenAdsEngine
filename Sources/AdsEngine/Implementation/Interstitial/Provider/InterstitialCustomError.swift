import Foundation

/// Interstitial error information, useful for logging and debugging
public enum InterstitialCustomError: Error {
    /// Failed to initialized the interstitial ad.
    /// - Parameter vendorId: vendor id for which the ad failed to initialize
    /// - Parameter additionalContext: additional information for debugging
    case failedInit(vendorId: String, additionalContext: String)
}

extension InterstitialCustomError: LocalizedError {
    /// Descriptive error containing information regarding vendorId and context surrounding the current failure
    public var errorDescription: String? {
        switch self {
        case .failedInit(let vendorId, let additionalContext):
            return """
                Failed to init ad for this vendor id :\(vendorId).

                Additional information: \(additionalContext)
            """
        }
    }
}
