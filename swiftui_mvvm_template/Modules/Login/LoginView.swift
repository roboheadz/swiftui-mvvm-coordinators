//
//  LoginView.swift
//  swiftui_mvvm_template
//
//  Created by Dave on 24/11/19.
//  Copyright © 2019 roboheadz. All rights reserved.
//

import SwiftUI

protocol LoginViewDelegate: class {
    func loginDetailView() -> AnyView
}

struct LoginView: View {
    
    weak var delegate: LoginViewDelegate?
    var viewModel: LoginViewModel
    
    var body: some View {
           VStack {
            Spacer()
            Button(action: {
                self.viewModel.login()
            }) {
                Text("Log in")
            }
            Spacer()
           }
    }
    
}

struct LoginView_Previews: PreviewProvider {
    
    static var previews: some View {
        let mainViewModel = LoginViewModel(services: AppServices())
        return LoginView(delegate: nil, viewModel: mainViewModel)
    }
    
}
