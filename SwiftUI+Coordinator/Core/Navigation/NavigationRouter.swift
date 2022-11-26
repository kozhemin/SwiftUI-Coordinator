//
//  NavigationRouter.swift
//  SwiftUI+Coordinator
//
//  Created by Егор Кожемин on 26.11.2022.
//

import SwiftUI

public protocol NavigationRouter {
    
    associatedtype V: View

    var transition: NavigationTranisitionStyle { get }
    
    @ViewBuilder
    func view() -> V
}
