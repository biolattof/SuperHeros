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

class HerosListViewController: UIViewController, Storyboarded, HerosListViewProtocol {
    var presenter: HerosListPresenterProtocol?
    
    static func storyboardName() -> String {
        return ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
