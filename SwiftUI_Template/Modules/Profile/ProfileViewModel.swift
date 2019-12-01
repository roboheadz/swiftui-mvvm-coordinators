//
//  ProfileViewModel.swift
//  SwiftUI_Template
//
//  Created by Dave on 1/12/19.
//  Copyright © 2019 roboheadz. All rights reserved.
//

import Foundation
import Combine

class ProfileViewModel: ObservableObject {
    
    private var services: Services
    
    init(services: Services) {
        self.services = services
    }
    
    deinit {
        print("deinit:\(#file)")
    }
    
    public func logout() {
        self.services.dataManager.loggedIn = false
    }
}
    
