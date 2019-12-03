//
//  RoutingViewModelTests.swift
//  swiftui_mvvm_template_tests
//
//  Created by Dave on 1/12/19.
//  Copyright © 2019 roboheadz. All rights reserved.
//

import XCTest
import Combine

@testable import swiftui_mvvm_template

class RoutingViewModelTests: XCTestCase {
    
    func testRoutingLoggedOut() {
        let services = AppServices()
        let viewModel = RoutingViewModel(services: services)
        
        // Given
        XCTAssertFalse(viewModel.loggedIn)
        
        // When
        services.dataManager.loggedIn = false

        // Wait for the messages to be recieved
        TestHelper.waitForMainLoop(0.1)
        
        // Then
        XCTAssertFalse(viewModel.loggedIn)
    }
    
    func testRoutingLoggedIn() {
        let services = AppServices()
        let viewModel = RoutingViewModel(services: services)

        // Given
        XCTAssertFalse(viewModel.loggedIn)

        // When
        services.dataManager.loggedIn = true
        
        // Wait for the messages to be recieved
        TestHelper.waitForMainLoop(0.1)

        // Then
        XCTAssertTrue(viewModel.loggedIn)
    }
    
}
