//
//  EarlGrey2ExperimentUITests.swift
//  EarlGrey2ExperimentUITests
//
//  Created by Adil Hussain on 05/01/2022.
//

import XCTest
import EarlGreyTest

extension XCTestCase {
    fileprivate var host: SwiftTestsHost {
        return unsafeBitCast(
            GREYHostApplicationDistantObject.sharedInstance,
            to: SwiftTestsHost.self
        )
    }
}

class EarlGrey2ExperimentUITests: XCTestCase {
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        
        XCUIApplication().launch()
    }
    
    func test_preconditions() throws {
        EarlGrey.selectElement(with: grey_accessibilityID("CountLabel")).assert(grey_sufficientlyVisible())
        EarlGrey.selectElement(with: grey_accessibilityID("CountLabel")).assert(grey_text("0"))
        EarlGrey.selectElement(with: grey_accessibilityID("CountLabel")).assert(host.text("0"))
        
        EarlGrey.selectElement(with: grey_accessibilityID("IncrementCountButton")).assert(grey_sufficientlyVisible())
        EarlGrey.selectElement(with: grey_accessibilityID("IncrementCountButton")).assert(grey_buttonTitle("Increment Count"))
        EarlGrey.selectElement(with: grey_accessibilityID("IncrementCountButton")).assert(host.buttonTitle("Increment Count"))
    }
    
    func test_tapping_the_increment_count_button_increments_the_value_in_the_count_label() {
        // When.
        EarlGrey.selectElement(with: grey_accessibilityID("IncrementCountButton")).perform(grey_tap())
        
        // Then.
        EarlGrey.selectElement(with: grey_accessibilityID("CountLabel")).assert(grey_text("1"))
    }
}
