# About

This Xcode workspace experiments with using EarlGrey 2 to test a UIKit application. It has been built by following the [EarlGrey 2.0 CocoaPods Integration](https://github.com/google/EarlGrey/blob/earlgrey2/docs/cocoapods-setup.md) guide but with one change: the 'EarlGreyTest' pod is added to the UI Testing Bundle as a framework so that the 'EarlGreyTest' module can be imported in Swift files.

In its current form, the UI Testing Bundle runs fine: it is able to execute EarlGrey actions and assertions without problem. However, running the application in isolation (i.e. not as part of the tests) results in a fatal error as follows:

> EarlGrey's app component has been launched without edoPort assigned.
> You are probably running the application under test by itself,
> which does not work since the embedded EarlGrey component needs its test counterpart present...

# Setup

Clone the repository, run `pod install` in the repository's root folder and then open the Xcode workspace.
