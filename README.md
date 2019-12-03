# swiftui-mvvm-template
Template MVVM app architecture, with coordinators and global manager objects.

This provides a template app project for SwiftUI, with an MVVM-C (Model, View, ViewModel and Coordinator) architecture.  

A bare bones project, this illustrates how an app can be configured with global manager objects that are observable. View Models bind themselves to manager object properties and update their own Published variables for the SwiftUI view to observe and bind itself to. This provides a simple configuration of responsibilities.

This template developed by David Wood. It is supplied without any support or liability implied. PRs/suggestions are welcome, and David can be reached at https://twitter.com/davidgarywood

## 🛠 Installation
- Download or clone the git repo, and navigate to it's folder. Open the the Xcode project `swiftui_mvvm_template.xcodeproj`

## ⚡️Object responsibilities

### View
Defines the view via SwiftUI.  Each View has a delegate protocol to define methods for requesting views. For example a Master view might have a detail view that it links to in a NavigationLink. The Master view would request this detail view from it's delegate.

### ViewModel
Defines the state and business for each module. The View links to the ViewModel via binding. Button presses and other actions in the View are sent to the ViewModel.

### Coordinator
Our Coordinator objects are the delegates for each View, they provide destination views for navgation links etc.

### Services + Managers
The project has a global Services struct which is injected into each module's ViewModel. This provides each module with access to all manager classes linked from this struct.

Manager classes talk with data sources, persist state, and provide bindings that view models can bind to for the UI.

## 🔥 Adding new modules
This project provides a template for a tool called (Generamba) https://github.com/strongself/Generamba. Once Generamba is setup you can generate new modules at the commandline from the root of the project, by typing;

`generamba gen YOURMODULENAMEHERE SwiftUI_MVVM`

## 🤖 License

swiftui_mvvm_template is licensed under the [MIT License](LICENSE.md)
