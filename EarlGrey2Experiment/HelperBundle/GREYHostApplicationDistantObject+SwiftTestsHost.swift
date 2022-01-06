//
//  GREYHostApplicationDistantObject+SwiftTestsHost.swift
//  HelperBundle
//
//  Created by Adil Hussain on 06/01/2022.
//

import Foundation
import EarlGreyTest

extension GREYHostApplicationDistantObject: SwiftTestsHost {
    
    func myFirstMatcher() -> GREYMatcher {
        let matches: GREYMatchesBlock = { element in
            return true
        }
        return GREYElementMatcherBlock(matchesBlock: matches) { description -> Void in
            description.appendText("myFirstMatcher()")
        }
    }
}
