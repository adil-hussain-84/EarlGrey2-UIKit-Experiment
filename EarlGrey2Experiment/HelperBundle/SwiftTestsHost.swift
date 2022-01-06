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
    
    func myFirstMatcher() -> GREYMatcher
}
