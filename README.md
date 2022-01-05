# About

This Xcode workspace experiments with using EarlGrey 2 to test a UIKit application. It has been built by following the [EarlGrey 2.0 CocoaPods Integration](https://github.com/google/EarlGrey/blob/earlgrey2/docs/cocoapods-setup.md) guide. It adds EarlGrey 2 to an iOS UI Testing Bundle.

In its current form, the UI Testing Bundle can be run. However, running the application in isolation results in a fatal error with the following message:

> EarlGrey's app component has been launched without edoPort assigned.
> You are probably running the application under test by itself,
> which does not work since the embedded EarlGrey component needs its test counterpart present...

# Setup

Clone the repository, run `pod install` in the repository's root folder and then open the Xcode workspace.
