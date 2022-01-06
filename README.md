# About

This Xcode workspace experiments with using EarlGrey 2 to test a UIKit application. It has been built by following the [EarlGrey 2.0 CocoaPods Integration](https://github.com/google/EarlGrey/blob/earlgrey2/docs/cocoapods-setup.md) guide but with three changes:

1. The pods are added as frameworks by means of the `use_frameworks!` declarative in the [Podfile](Podfile). This is primarily so that the 'EarlGreyTest' module can be imported into Swift files.
1. The 'EarlGreyApp' pod is not added directly to the application target but to a helper bundle as suggested in [issue #1562](https://github.com/google/EarlGrey/issues/1562) in the EarlGrey GitHub repository. 
1. The steps in the [White-Boxing Setup Guide](https://github.com/google/EarlGrey/blob/earlgrey2/docs/white-boxing-setup-guide.md) have been followed to allow custom EarlGrey actions and matchers to be defined in the helper module. Skip the steps in this guide which pertain to `Link Binary With Libraries` and `User Header Search Paths` since these steps are acvieved automatically by means of CocoaPods.

# Setup

1. Clone the repository.
1. Run `pod install` in the repository's root folder.
1. Open the Xcode workspace.
1. Run the tests defined in [EarlGrey2ExperimentUITests.swift](EarlGrey2ExperimentUITests/EarlGrey2ExperimentUITests.swift).
