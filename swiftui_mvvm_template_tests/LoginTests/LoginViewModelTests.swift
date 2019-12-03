//
//  LoginViewModelTests.swift
//  swiftui_mvvm_template_tests
//
//  Created by Dave on 2/12/19.
//  Copyright © 2019 roboheadz. All rights reserved.
//

import XCTest
import Combine
 
@testable import swiftui_mvvm_template

class LoginViewModelTests: XCTestCase {
    
    func testLogin() {
        let services = AppServices()
        let viewModel = LoginViewModel(services: services)

        // Given
        XCTAssertFalse(services.dataManager.loggedIn)

        // When
        viewModel.login()
        
        // Then
        XCTAssertTrue(services.dataManager.loggedIn)
    }
    
}
