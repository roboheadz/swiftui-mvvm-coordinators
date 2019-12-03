//
//  NewModuleViewModel.swift
//  swiftui-mvvm-template
//
//  Created by David Wood on 03/12/2019.
//  Copyright © 2019 roboheadz. All rights reserved.
//

import Foundation
import Combine

class NewModuleViewModel: ObservableObject {
    
    private var services: Services
    private var cancellables: Set<AnyCancellable> = []

    init(services: Services) {
        self.services = services
        self.setupBindings()
    }
    
    func setupBindings() {
        // Configure bindings to observables in the Services struct here
    }
    
}
