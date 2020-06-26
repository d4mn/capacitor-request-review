declare module "@capacitor/core" {
  interface PluginRegistry {
    RequestReview: RequestReviewPlugin;
  }
}

export interface ReviewManually {
  appId: number;
}

export interface RequestReviewPlugin {
  incrementCount(): Promise<{value: string}>;
  requestReview(): Promise<{value: string}>;
  requestReviewManually(options: ReviewManually): Promise<{value: string}>;
}
