//
//  LogoutView.swift
//  swiftui_mvvm_template
//
//  Created by Dave on 1/12/19.
//  Copyright © 2019 roboheadz. All rights reserved.
//

import SwiftUI

protocol LogoutViewDelegate: class {
}

struct LogoutView: View {
    
    weak var delegate: LogoutViewDelegate?
    var viewModel: LogoutViewModel
    
    var body: some View {
       VStack {
            Spacer()
            Button(action: {
                self.viewModel.logout()
            }) {
                Text("Log out")
            }
            Spacer()
        }
    }
}

struct LogoutViewPreviews: PreviewProvider {
    
    static var previews: some View {
        let mainViewModel = LogoutViewModel(services: AppServices())
        return LogoutView(delegate: nil, viewModel: mainViewModel)
    }
    
}
