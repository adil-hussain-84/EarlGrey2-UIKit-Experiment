# About

This Xcode workspace experiments with using EarlGrey 2 to test a UIKit application. It has been built by following the [EarlGrey 2.0 CocoaPods Integration](https://github.com/google/EarlGrey/blob/earlgrey2/docs/cocoapods-setup.md) guide but with two changes:

1. The 'EarlGreyTest' pod is added to the UI Testing Bundle as a framework so that the 'EarlGreyTest' module can be imported in Swift files. See [Podfile](Podfile).
1. The project's main scheme adds an "EarlGreyStandaloneMode" environment variable with value "1" as specified in [this comment](https://github.com/google/EarlGrey/issues/971#issuecomment-722955348) in [this issue](https://github.com/google/EarlGrey/issues/971).

The UI Testing Bundle in this workspace is able to execute EarlGrey actions and assertions without problem. The next step in this experiment is to enable white-box testing.

# Setup

Clone the repository, run `pod install` in the repository's root folder and then open the Xcode workspace.
