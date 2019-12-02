//
//  LoginCoordinator.swift
//  SwiftUI_TemplateTests
//
//  Created by Dave on 1/12/19.
//  Copyright © 2019 roboheadz. All rights reserved.
//

import Foundation
import SwiftUI

class LoginCoordinator {
    
    private let services: Services
    
    init(services: Services) {
        self.services = services
    }
    
    deinit {
        print("deinit:\(#file)")
    }
    
    func rootView() -> AnyView {
        let mainViewModel = LoginViewModel(services: self.services)
        let mainView = LoginView(delegate: self, viewModel: mainViewModel)
        return AnyView(mainView)
    }
}

extension LoginCoordinator: LoginViewDelegate {
    
    func loginDetailView() -> AnyView {
        return AnyView(
            Text("Main detail view")
        )
    }
    
}
