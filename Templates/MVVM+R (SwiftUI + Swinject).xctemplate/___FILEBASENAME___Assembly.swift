//___FILEHEADER___

import Foundation
import Swinject

final class ___VARIABLE_productName:identifier___Assembly: Assembly {
    
    func assemble(container: Container) {
        container.register(___VARIABLE_productName:identifier___View.self) { resolver in
            let viewModel = resolver.resolve(___VARIABLE_productName:identifier___ViewModel.self)!
            let controller = ___VARIABLE_productName:identifier___View(viewModel: viewModel)
            return controller
        }.inObjectScope(.weak)
        
        container.register(___VARIABLE_productName:identifier___ViewController.self) { resolver in
            let viewModel = resolver.resolve(___VARIABLE_productName:identifier___ViewModel.self)!
            let controller = ___VARIABLE_productName:identifier___ViewController(viewModel: viewModel)
            return controller
        }.inObjectScope(.weak)
        
        container.register(___VARIABLE_productName:identifier___ViewModel.self) { resolver in
            let router = resolver.resolve(___VARIABLE_productName:identifier___Router.self)!
            let viewModel = ___VARIABLE_productName:identifier___ViewModel(router: router)
            return viewModel
        }.inObjectScope(.weak)

        container.register(___VARIABLE_productName:identifier___Router.self) { resolver in
            return ___VARIABLE_productName:identifier___DefaultRouter(dependencyContainer: container)
        }.initCompleted { resolver, router in
            router.viewController = resolver.resolve(___VARIABLE_productName:identifier___ViewController.self)!
        }.inObjectScope(.weak)
    }
}
