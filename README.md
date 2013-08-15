![image](https://dl.dropboxusercontent.com/u/11493275/github/TSActivityIndicatorView/TSActivityIndicatorView.png)

TSActivityIndicatorView
=======================

This is very simple view class that looks like an UIActivityIndicatorView but is fully customizable. It's great for you if you want to add indicator view to you game or app and it should be customized.
If you use this class you can not only make circular Indicators, you can add images that are wide and have e.g. 3 rotating balls etc. (instead of one object which rotate in native UIActivityIndicator).

Why should i use it?
=======================
As I mentioned earlier, if you want to have nice looking indicator view, use this class.

Is it better than animated UIImageView?
=======================
Yes. You can use it in very simple way in Interface Builder. You only have to pass images names in keyPath and that's all. Look below.

How can i use it? Is it difficult?
=======================
There are two ways to use it and both are simple. Sounds good, ha?

<h3>1. Fully programically</h1>

First things first. You have to import class.
```obj-c
#import "TSActivityIndicatorView.h"
```
Next thing to do is create instance.
```obj-c
    TSActivityIndicatorView *customIndicator = 
    [[TSActivityIndicatorView alloc] initWithFrame:CGRectMake(160-17, 100, 35, 35)];
```

Then you have to import images to your project and add titles to the <i>frames</i> property as an <i>NSArray</i> object.
```obj-c
    customIndicator.frames = @[@"activity-indicator-1",
                               @"activity-indicator-2",
                               @"activity-indicator-3",
                               @"activity-indicator-4",
                               @"activity-indicator-5",
                               @"activity-indicator-6"];
```

Next you may set duration time of whole animation.
```obj-c
    customIndicator.duration = 0.5f; /// Default is 1.0f
```

Penultimate step is to run this indicator.
```obj-c
    [customIndicator startAnimating];
```

And after your things are done, stop indicator it by calling <i>stopAnimating</i>
```obj-c
    [customIndicator stopAnimating];
```

Both <i>startAnimating</i> and <i>stopAnimating</i> methods are executed in **Main Thread**.

<h3>2. In Interface Builder</h1>

First thing to do is add <i>View</i> to your ViewController and set it's size. I prefer 35 by 35 pixels.
Then you have to set the class of this view. Set <i>TSActivityIndicatorView</i>.
![image](https://dl.dropboxusercontent.com/u/11493275/github/TSActivityIndicatorView/1.png)

And the most important thing to do, you have to type images names (required) and optionally you can set <i>duration</i> of animation (default set to <i>1.0</i>), and <i>hidesWhenStopped</i> property (default set to <i>YES</i>).
![image](https://dl.dropboxusercontent.com/u/11493275/github/TSActivityIndicatorView/2.png)

Next step is to create outlet and call <i>startAnimation</i> and <stopAnimation> whenever you need.

If you have a question, feel free to mail me or mention me @tomkowz.

Enjoy!
