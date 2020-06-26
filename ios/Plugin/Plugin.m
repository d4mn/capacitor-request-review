#import <Foundation/Foundation.h>
#import <Capacitor/Capacitor.h>

// Define the plugin using the CAP_PLUGIN Macro, and
// each method the plugin supports using the CAP_PLUGIN_METHOD macro.
CAP_PLUGIN(RequestReview, "RequestReview",
    CAP_PLUGIN_METHOD(incrementCount, CAPPluginReturnPromise);
    CAP_PLUGIN_METHOD(requestReview, CAPPluginReturnPromise);
    CAP_PLUGIN_METHOD(requestReviewManually, CAPPluginReturnPromise);
)
