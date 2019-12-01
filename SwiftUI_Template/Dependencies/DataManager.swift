//
//  DataManager.swift
//  SwiftUICoordinator
//
//  Created by Dave on 1/12/19.
//  Copyright © 2019 roboheadz. All rights reserved.
//

import Foundation
import Combine

class AppDataManager: ObservableObject {
    @Published var loggedIn: Bool = false
}
