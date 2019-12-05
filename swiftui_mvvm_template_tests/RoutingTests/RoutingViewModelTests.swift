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
        // Given
        let services = AppServices()
        let viewModel = RoutingViewModel(services: services)
        var cancellables: Set<AnyCancellable> = []

        services.dataManager.loggedIn = true
        viewModel.loggedIn = true
        
        let loggedInExpectation = self.expectation(description: "View Model Logged in = false")
        
        cancellables.insert(
            viewModel.$loggedIn.sink { (value) in
                if value == false {
                    loggedInExpectation.fulfill()
                }
            }
        )
        
        // When
        services.dataManager.loggedIn = false
        
        // Then
        waitForExpectations(timeout: 3)
    }
    
    func testRoutingLoggedIn() {
        let services = AppServices()
        let viewModel = RoutingViewModel(services: services)
        var cancellables: Set<AnyCancellable> = []

        // Given
        XCTAssertFalse(viewModel.loggedIn)
        
        let loggedInExpectation = self.expectation(description: "View Model Logged in = true")
        
        cancellables.insert(
            viewModel.$loggedIn.sink { (value) in
                if value == true {
                    loggedInExpectation.fulfill()
                }
            }
        )
        
        // Then
        services.dataManager.loggedIn = true
    
        // When
        waitForExpectations(timeout: 3)
    }
    
}
