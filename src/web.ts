import { WebPlugin } from '@capacitor/core';
import { RequestReviewPlugin } from './definitions';

export class RequestReviewWeb extends WebPlugin implements RequestReviewPlugin {
  constructor() {
    super({
      name: 'RequestReview',
      platforms: ['web']
    });
  }

  async echo(options: { value: string }): Promise<{value: string}> {
    console.log('ECHO', options);
    return options;
  }
}

const RequestReview = new RequestReviewWeb();

export { RequestReview };

import { registerWebPlugin } from '@capacitor/core';
registerWebPlugin(RequestReview);
