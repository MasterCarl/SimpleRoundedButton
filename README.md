# SimpleRoundedButton

[![CI Status](http://img.shields.io/travis/MasterCarl/SimpleRoundedButton.svg?style=flat)](https://travis-ci.org/MasterCarl/SimpleRoundedButton)
[![Version](https://img.shields.io/cocoapods/v/SimpleRoundedButton.svg?style=flat)](http://cocoapods.org/pods/SimpleRoundedButton)
[![License](https://img.shields.io/cocoapods/l/SimpleRoundedButton.svg?style=flat)](http://cocoapods.org/pods/SimpleRoundedButton)
[![Platform](https://img.shields.io/cocoapods/p/SimpleRoundedButton.svg?style=flat)](http://cocoapods.org/pods/SimpleRoundedButton)

**SimpleRoundedButton** is a UIButton subclass that uses *@IBInspectable* attributes to allow easy customization of border properties, colors and corner radius, directly from the Storyboard. Inspired by [KBRoundedButton](https://github.com/burczyk/KBRoundedButton), but making use of XCode's *@IBInspectable* feature.

![XCode properties](/screenshots/xcode.png?raw=true)

![Shaped like a Text Field](/screenshots/1.png?raw=true)
![Or nicely rounded](/screenshots/2.png?raw=true)

The corner radius is automatically constrained to half the button height or width. To achieve completely rounded sides, just set the value to something like 100.

### Activity Indicator
Additionally, SimpleRoudedButton has a simple function to show a UIActivityIndicator.

![Or nicely rounded](/screenshots/animation.gif?raw=true)

```swift
import SimpleRoundedButton

button.startAnimating() 

// do some stuff

button.stopAnimating() 
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

SimpleRoundedButton is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "SimpleRoundedButton"
```

## Usage
To use SimpleRoundedButton, simply assign SimpleRoundedButton as the custom class in the identity inspector. You need to set class and model.

![Setting the custom class](/screenshots/customClass.png?raw=true)

## Apps using this control

If you're using this control, I'd love hearing from you!

## Author

Carl Gödecken, dev@mastercarl.com

## License

SimpleRoundedButton is available under the MIT license. See the LICENSE file for more info.
