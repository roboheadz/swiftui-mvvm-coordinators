//
//  Services.swift
//  swiftui_mvvm_template
//
//  Created by Dave on 1/12/19.
//  Copyright © 2019 roboheadz. All rights reserved.
//

import Foundation

protocol Services {
    var dataManager: AppDataManager { get set }
}

class AppServices: Services {
    
    var dataManager: AppDataManager = AppDataManager()
    
}
