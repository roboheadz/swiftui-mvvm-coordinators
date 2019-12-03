//
//  DataManager.swift
//  SwiftUI_mvvm_template
//
//  Created by Dave on 1/12/19.
//  Copyright © 2019 roboheadz. All rights reserved.
//

import Foundation
import Combine

class AppDataManager: ObservableObject {
    
    @Published var loggedIn: Bool = false {
        didSet {
            print("AppDataManager - Logged In:\(self.loggedIn)")
        }
    }
    
}
