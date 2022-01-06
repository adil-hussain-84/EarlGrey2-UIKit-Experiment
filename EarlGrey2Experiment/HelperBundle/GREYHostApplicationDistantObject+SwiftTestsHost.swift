//
//  GREYHostApplicationDistantObject+SwiftTestsHost.swift
//  HelperBundle
//
//  Created by Adil Hussain on 06/01/2022.
//

import UIKit
import EarlGreyTest

extension GREYHostApplicationDistantObject: SwiftTestsHost {
    
    func text(_ text: String) -> GREYMatcher {
        let matches: GREYMatchesBlock = { element in
            if let label = element as? UILabel {
                return label.text == text
            }
            if let textField = element as? UITextField {
                return textField.text == text
            }
            if let textView = element as? UITextView {
                return textView.text == text
            }
            return false
        }
        return GREYElementMatcherBlock(matchesBlock: matches) { description -> Void in
            description.appendText("text('\(text)')")
        }
    }
    
    func buttonTitle(_ title: String) -> GREYMatcher {
        let matches: GREYMatchesBlock = { element in
            if let button = element as? UIButton {
                return button.titleLabel?.text == title
            }
            return false
        }
        return GREYElementMatcherBlock(matchesBlock: matches) { description -> Void in
            description.appendText("buttonTitle('\(title)')")
        }
    }
}
