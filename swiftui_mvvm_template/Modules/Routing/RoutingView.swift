//
//  RoutingView.swift
//  SwiftUI_mvvm_template
//
//  Created by Dave on 1/12/19.
//  Copyright © 2019 roboheadz. All rights reserved.
//

import Foundation
import SwiftUI

protocol RoutingViewDelegate: class {
    func loggedInView() -> AnyView
    func notLoggedInView() -> AnyView
}

struct RoutingView: View {
    
    weak var delegate: RoutingViewDelegate?
    @ObservedObject var viewModel: RoutingViewModel
    
    var body: some View {
        VStack {
            if self.viewModel.loggedIn == true {
                self.delegate?.loggedInView()
            } else {
                self.delegate?.notLoggedInView()
            }
        }
    }
    
}

struct RoutingView_Previews: PreviewProvider {
    
    static var previews: some View {
        let services = AppServices()
        let routingViewModel = RoutingViewModel(services: services)
        let appCoordinator = AppCoordinator(services: services)
        return RoutingView(delegate: appCoordinator,viewModel: routingViewModel)
    }
    
}
