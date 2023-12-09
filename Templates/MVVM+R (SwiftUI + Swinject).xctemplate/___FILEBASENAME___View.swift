//___FILEHEADER___

import SwiftUI

struct ___VARIABLE_productName:identifier___View: View {
    
    @ObservedObject var viewModel: ___VARIABLE_productName:identifier___ViewModel
    
    var body: some View {
        Text("Hello, World!")
    }
}

#if DEBUG

import Swinject

struct ___VARIABLE_productName:identifier___View_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = ___VARIABLE_productName:identifier___ViewModel(
            router: ___VARIABLE_productName:identifier___DefaultRouter(dependencyContainer: Container())
        )
        
        return ___VARIABLE_productName:identifier___View(viewModel: viewModel)
    }
}

#endif
