# Learn how to use UIKit and integrate SwiftUI animations.

### Description
This project is an iOS app that showcases animations created using both UIKit and SwiftUI. The project includes two different animations: "FireAnimation" and "MoonAnimation." Both animations use SwiftUI for the interface, storyboard, and animations, but the core functionality is written in UIKit.

## Getting Started
### Installation
* Download or clone the project:
```
https://github.com/Bennilb/NCX_Benedetta.git
```
* Open the project in Xcode.

## Screenshots
<img src="https://user-images.githubusercontent.com/113519450/228649893-991eac1b-3655-4e84-803c-9cb0852c4580.png" alt="ScreenShot1" width="200">    <img src="https://user-images.githubusercontent.com/113519450/228649908-4cecf509-26e6-4e70-9928-deafaaefba28.png" alt="ScreenShot2" width="200">

## Code
The following code shows how to __integrate__ the SwiftUI animations within the UIKit interfaces:

```
@IBSegueAction func segueToMoonAnimation(_ coder: NSCoder) -> UIViewController? {
    return UIHostingController(coder: coder, rootView: MoonAnimation())
}

@IBSegueAction func segueToFireAnimation(_ coder: NSCoder) -> UIViewController? {
    return UIHostingController(coder: coder, rootView: FireAnimation().frame(width: 100, height: 100, alignment: .center))
}

@IBSegueAction func segueToFireAnimation2(_ coder: NSCoder) -> UIViewController? {
    return UIHostingController(coder: coder, rootView: FireAnimation().frame(width: 200, height: 200))
}
```

These functions connect the SwiftUI animations to the UIKit interfaces via a segue that links a container to a hosting view controller.
Note that this is just a brief overview of the important code snippets. For more detailed information, please refer to the source code.

## Animations
The __animations__ are achieved through a timer that continuously updates the image. The images are static and they changes every _tot_ seconds(0.25s and 0.3s). The image is displayed in a "VStack" view within a "ZStack" view to allow for the background color of the screen.
___Detailed Example___
The FireAnimation SwiftUI view defines a @State variable Fire that determines which fire image to display. The timerRobot() function sets up a timer that updates the Fire variable every 0.25 seconds, which causes the image displayed to change and create the illusion of a flickering flame.

## Button
There are three buttons embedded within the storyboard: Get Started, Login, and Signup. The Get Started button takes the user to an interface that displays the other two buttons.

### Assets

The assets used in this project were taken from a free package by @shubhangi.design.

### Future Work

In the future, we plan to expand the app to include more screens and functionality. We also plan to incorporate more SwiftUI animations and explore other ways to integrate SwiftUI into UIKit-based apps.

### Contributing

We welcome contributions from the community! If you find a bug or have a suggestion for a new feature, please open an issue or submit a pull request.
