//
//  BaseTestCase.swift
//  SwiftUI_TemplateTests
//
//  Created by Dave on 2/12/19.
//  Copyright © 2019 roboheadz. All rights reserved.
//

import Foundation

class TestHelper {
    
    static func waitForMainLoop(_ timeout: Double) {
        let timeInterval = TimeInterval(timeout)
        RunLoop.main.run(until: Date(timeIntervalSinceNow: timeInterval))
    }
    
}
