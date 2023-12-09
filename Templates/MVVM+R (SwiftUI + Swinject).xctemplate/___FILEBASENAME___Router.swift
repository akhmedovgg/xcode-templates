//___FILEHEADER___

import Foundation
import Swinject

protocol ___VARIABLE_productName:identifier___Router: AnyObject {
    
    var viewController: ___VARIABLE_productName:identifier___ViewController? { get set }
}

final class ___VARIABLE_productName:identifier___DefaultRouter: ___VARIABLE_productName:identifier___Router {
    
    weak var viewController: ___VARIABLE_productName:identifier___ViewController?
    private let dependencyContainer: Container
    
    init(dependencyContainer: Container) {
        self.dependencyContainer = dependencyContainer
    }
    
}
