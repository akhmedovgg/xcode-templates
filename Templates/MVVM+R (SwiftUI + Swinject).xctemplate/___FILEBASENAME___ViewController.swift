//___FILEHEADER___

import SwiftUI
import Combine

final class ___VARIABLE_productName:identifier___ViewController: UIHostingController<___VARIABLE_productName:identifier___View> {
    
    private let viewModel: ___VARIABLE_productName:identifier___ViewModel
    private var subscriptions: Set<AnyCancellable>
    
    required init(viewModel: ___VARIABLE_productName:identifier___ViewModel) {
        self.viewModel = viewModel
        self.subscriptions = .init()
        
        super.init(rootView: ___VARIABLE_productName:identifier___View(viewModel: viewModel))
    }
    
    @MainActor required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
