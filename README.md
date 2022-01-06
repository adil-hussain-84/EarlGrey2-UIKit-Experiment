# About

This Xcode workspace experiments with using EarlGrey 2 to test a UIKit application. It has been built by following the [EarlGrey 2.0 CocoaPods Integration](https://github.com/google/EarlGrey/blob/earlgrey2/docs/cocoapods-setup.md) guide but with two changes:

1. The pods are added as frameworks by means of the `use_frameworks!` declarative in the [Podfile](Podfile). This is primarily so that the 'EarlGreyTest' module can be imported into Swift files.
1. The 'EarlGreyApp' pod is not added directly to the application target but to a helper bundle as described in [issue #1562](https://github.com/google/EarlGrey/issues/1562) in the EarlGrey GitHub repository. 

The UI Testing Bundle in this workspace is able to execute EarlGrey actions and assertions without problem. The next step is to enable white-box testing by means of the helper bundle.

# Setup

Clone the repository, run `pod install` in the repository's root folder and then open the Xcode workspace.
