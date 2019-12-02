//
//  ProfileViewModelTests.swift
//  SwiftUI_TemplateTests
//
//  Created by Dave on 2/12/19.
//  Copyright © 2019 roboheadz. All rights reserved.
//


import XCTest
import Combine

@testable import SwiftUI_Template

class ProfileViewModelTests: XCTestCase {
    func testRoutingLoggedOut() {
        let services = AppServices()
        let viewModel = ProfileViewModel(services: services)
        
        // Given
        services.dataManager.loggedIn = true
        XCTAssertTrue(services.dataManager.loggedIn)

        // When
        viewModel.logout()
        
        // Then
        XCTAssertFalse(services.dataManager.loggedIn)
    }
}
