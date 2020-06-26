Capacitor plugin for ios to request review

## API
- incrementCount
- requestReview
- requestReviewManually

## Usage

All samples for vue.js but can be used anywere

incrementCount() method counts user actions till 5 (hardcoded) and on 5'th action will show review dialog. Counter resets after each version update

```js
import { Plugins } from "@capacitor/core";
export default {
    methods: {
        myAction(){
            Plugins.RequestReview.incrementCount()
        }
    }
}
```
requestReview() shows review dialog imediatelly. Only once for each version otherwise returns error

```js
import { Plugins } from "@capacitor/core";
export default {
    methods: {
        rateUs(){
            Plugins.RequestReview.requestReview().catch(err=>{console.log(err)})
        }
    }
}
```

requestReviewManually({appId: 123456789}) opens app store write review form

```js
import { Plugins } from "@capacitor/core";
export default {
    methods: {
        writeReview(){
            Plugins.RequestReview.requestReviewManually({appId: 123456789}).catch(err=>{console.log(err)})
        }
    }
}
```