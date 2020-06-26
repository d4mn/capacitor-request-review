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
        ReviewRequest.shared.requestReview();
        call.success([
            "value": true
        ])
    }
    @objc func requestReviewManually(_ call: CAPPluginCall) {
        guard let appId = call.getString("appId") else {
            call.error("Must provide a app store id")
            return
        }
        ReviewRequest.shared.requestReviewManually()
        call.success([
            "value": true
        ])
    }
}
