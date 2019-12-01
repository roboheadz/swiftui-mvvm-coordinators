//
//  ProfileCoordinator.swift
//  SwiftUI_Template
//
//  Created by Dave on 1/12/19.
//  Copyright © 2019 roboheadz. All rights reserved.
//

import Foundation
import SwiftUI

class ProfileCoordinator {
    private let services: Services
    
    init(services: Services) {
        self.services = services
    }
    
    deinit {
        print("deinit:\(#file)")
    }
    
    func rootView() -> AnyView {
        let profileViewModel = ProfileViewModel(services: self.services)
        let profileView = ProfileView(delegate: self, viewModel: profileViewModel)
        return AnyView(profileView)
    }
}

extension ProfileCoordinator: ProfileViewDelegate {
}
