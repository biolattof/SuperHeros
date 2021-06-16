//
//  MainScreenRouter.swift
//  SuperHeros
//
//  Created by macbook on 6/16/21.
//
protocol HerosListCoordinatorProtocol: class {
    static func createModule() -> HerosListViewProtocol
}

import Foundation
import UIKit

class HerosListRouter: NSObject, HerosListCoordinatorProtocol {
    
    static func createModule() -> HerosListViewProtocol {
        let view: HerosListViewProtocol = HerosListViewController.instantiate()
        let presenter: HerosListPresenterProtocol = HerosListPresenter()
        let coordinator: HerosListCoordinatorProtocol = HerosListRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.router = coordinator
        
        return view
    }
}
