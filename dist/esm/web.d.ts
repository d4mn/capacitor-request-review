import { WebPlugin } from '@capacitor/core';
import { RequestReviewPlugin } from './definitions';
export declare class RequestReviewWeb extends WebPlugin implements RequestReviewPlugin {
    constructor();
    echo(options: {
        value: string;
    }): Promise<{
        value: string;
    }>;
}
declare const RequestReview: RequestReviewWeb;
export { RequestReview };
