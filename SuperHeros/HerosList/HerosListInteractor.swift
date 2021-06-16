//
//  HerosListInterator.swift
//  SuperHeros
//
//  Created by macbook on 6/16/21.
//

import UIKit

protocol HerosListInteractorProtocol: class {
    var presenter: HerosListPresenterProtocol? { get set }
}

class HerosListInteractor: NSObject, HerosListInteractorProtocol {
    weak var presenter: HerosListPresenterProtocol?
    
}

