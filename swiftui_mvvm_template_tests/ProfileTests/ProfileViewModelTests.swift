//
//  ProfileViewModelTests.swift
//  swiftui_mvvm_template_tests
//
//  Created by Dave on 2/12/19.
//  Copyright © 2019 roboheadz. All rights reserved.
//


import XCTest
import Combine

@testable import swiftui_mvvm_template

class ProfileViewModelTests: XCTestCase {
    
    func testRoutingLoggedOut() {
        let services = AppServices()
        let viewModel = LogoutViewModel(services: services)
        
        // Given
        services.dataManager.loggedIn = true
        XCTAssertTrue(services.dataManager.loggedIn)

        // When
        viewModel.logout()
        
        // Then
        XCTAssertFalse(services.dataManager.loggedIn)
    }
    
}
