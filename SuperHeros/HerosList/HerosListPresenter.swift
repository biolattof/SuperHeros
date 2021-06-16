//
//  HerosListPresenter.swift
//  SuperHeros
//
//  Created by macbook on 6/16/21.
//

import UIKit

protocol HerosListPresenterProtocol: class {
    var view: HerosListViewProtocol? { get set }
    var interactor: HerosListInteractorProtocol? { get set }
    var router: HerosListCoordinatorProtocol? { get set }
}

class HerosListPresenter: NSObject, HerosListPresenterProtocol {
    weak var view: HerosListViewProtocol?
    var interactor: HerosListInteractorProtocol?
    var router: HerosListCoordinatorProtocol?

}

