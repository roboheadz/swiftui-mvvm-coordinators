//
//  MainViewModel.swift
//  SwiftUI_mvvm_template
//
//  Created by Dave on 1/12/19.
//  Copyright © 2019 roboheadz. All rights reserved.
//

import Foundation
import Combine

class LoginViewModel: ObservableObject {
    
    private var services: Services
    
    init(services: Services) {
        self.services = services
    }
    
    deinit {
        print("deinit:\(#file)")
    }
    
    public func login() {
        self.services.dataManager.loggedIn = true
    }
    
}
    
