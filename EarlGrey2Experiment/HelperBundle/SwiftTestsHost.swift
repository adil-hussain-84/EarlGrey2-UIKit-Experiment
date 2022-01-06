//
//  SwiftTestsHost.swift
//  HelperBundle
//
//  Created by Adil Hussain on 06/01/2022.
//

import Foundation
import EarlGreyTest

@objc
protocol SwiftTestsHost {
    
    func text(_ text: String) -> GREYMatcher
    
    func buttonTitle(_ title: String) -> GREYMatcher
}
