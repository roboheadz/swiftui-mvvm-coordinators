//
//  ProfileView.swift
//  SwiftUI_Template
//
//  Created by Dave on 1/12/19.
//  Copyright © 2019 roboheadz. All rights reserved.
//

import SwiftUI

protocol ProfileViewDelegate: class {
}

struct ProfileView: View {
    
    weak var delegate: ProfileViewDelegate?
    var viewModel: ProfileViewModel
    
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

struct ProfileViewPreviews: PreviewProvider {
    
    static var previews: some View {
        let mainViewModel = ProfileViewModel(services: AppServices())
        return ProfileView(delegate: nil, viewModel: mainViewModel)
    }
    
}
