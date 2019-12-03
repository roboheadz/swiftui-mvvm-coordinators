//
//  NewModuleView.swift
//  swiftui-mvvm-template
//
//  Created by David Wood on 03/12/2019.
//  Copyright © 2019 roboheadz. All rights reserved.
//

import Foundation
import SwiftUI

protocol NewModuleDelegate: class {
}

struct NewModule: View {
    
    weak var delegate: NewModuleDelegate?
    @ObservedObject var viewModel: NewModuleModel
    
    var body: some View {
    }
    
}

struct NewModule_Previews: PreviewProvider {
    
    static var previews: some View {
        let services = AppServices()
        let viewModel = NewModuleViewModel(services: services)
        return NewModuleView(delegate: nil,viewModel: viewModel)
    }
    
}
