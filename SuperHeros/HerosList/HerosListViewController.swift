//
//  HerosListViewController.swift
//  SuperHeros
//
//  Created by macbook on 6/16/21.
//

import UIKit

protocol HerosListViewProtocol where Self: UIViewController {
    var presenter: HerosListPresenterProtocol? { get set }
}

import UIKit

class HerosListViewController: UIViewController, HerosListViewProtocol {
    var presenter: HerosListPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
