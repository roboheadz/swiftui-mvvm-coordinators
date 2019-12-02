//
//  AppCoordinator.swift
//  SwiftUI_TemplateTests
//
//  Created by Dave on 1/12/19.
//  Copyright © 2019 roboheadz. All rights reserved.
//

import Foundation
import SwiftUI

class AppCoordinator {
    
    private let services: Services
    
    lazy var loginCoordinator: LoginCoordinator = {
        return LoginCoordinator(services: self.services)
    }()

    lazy var profileCoordinator: ProfileCoordinator = {
        return ProfileCoordinator(services: self.services)
    }()

    init(services: Services) {
        self.services = AppServices()
    }
    
    deinit {
        print("deinit:\(#file)")
    }
    
    func rootView() -> AnyView {
        let routingViewModel = RoutingViewModel(services: self.services)
        let routingView = RoutingView(delegate: self, viewModel: routingViewModel)
        return AnyView(routingView)
    }
    
}

extension AppCoordinator: RoutingViewDelegate {
    
    func loggedInView() -> AnyView {
        return self.profileCoordinator.rootView()
    }
    
    func notLoggedInView() -> AnyView {
        return self.loginCoordinator.rootView()
    }
    
}
