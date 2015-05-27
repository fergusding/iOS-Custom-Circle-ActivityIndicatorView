# iOS-Custom-ActivityIndicatorView
A custom ActivityIndicaotrView used in iOS.

# Introduction

FDActivityIndicatorView is a activity indicatorview which shows a circle rotating, it is similar to wechat login activity indicator view. Also it supports to set the size accroding to it's frame and set the color of the circle.

## ScreenShot

![circle-activityindicatorview](http://7xiamc.com1.z0.glb.clouddn.com/circle-indicatorview.png)

# Get started

1. Down the FDActivityIndicatorView.h and FDActivityIndicatorView.m source file.
2. Add the two source files to your project.
3. Import the FDActivityIndicatorView.h file where you want to use it.

# Usage

```Objective-C
    FDActivityIndicatorView *indicatorView = [[FDActivityIndicatorView alloc] initWithFrame:CGRectMake(50, 250, 200, 200)];
    indicatorView.color = [UIColor redColor];
    [self.view addSubview:indicatorView];
```

#License
  MIT
