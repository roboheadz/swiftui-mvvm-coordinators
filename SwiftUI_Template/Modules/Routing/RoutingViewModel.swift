//
//  RoutingViewModel.swift
//  SwiftUI_TemplateTests
//
//  Created by Dave on 1/12/19.
//  Copyright © 2019 roboheadz. All rights reserved.
//

import Foundation
import Combine

class RoutingViewModel: ObservableObject {
    
    @Published var loggedIn: Bool = false {
        didSet {
            print("RoutingViewModel - Logged In:\(self.loggedIn)")
        }
    }
    
    private var services: Services
    private var cancellables: Set<AnyCancellable> = []

    init(services: Services) {
        self.services = services
        self.setupBindings()
    }
    
    func setupBindings() {
        self.services.dataManager.$loggedIn.receive(on: DispatchQueue.main)
            .assign(to: \.loggedIn, on: self)
            .store(in: &self.cancellables)
    }
    
}
