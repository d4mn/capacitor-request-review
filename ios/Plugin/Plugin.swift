import Foundation
import Capacitor
import StoreKit.SKStoreReviewController

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitor.ionicframework.com/docs/plugins/ios
 */

@objc(RequestReview)
public class RequestReview: CAPPlugin {
    
    @objc func incrementCount(_ call: CAPPluginCall) {
        ReviewRequest.shared.incrementCount();
        call.success([
            "value": true
        ])
    }

    @objc func requestReview(_ call: CAPPluginCall) {
        let result: Bool = ReviewRequest.shared.requestReview();
        if result {
            call.success([
                "value": result
            ])
        } else {
            call.reject("Failed to show rate us dialog. Probably it was allready showed.")
        }
        
    }
    @objc func requestReviewManually(_ call: CAPPluginCall) {
        guard let appId = call.getInt("appId") else {
            call.error("Must provide a app store id")
            return
        }
        ReviewRequest.shared.requestReviewManually(for: appId)
        call.success([
            "value": true
        ])
    }
}
