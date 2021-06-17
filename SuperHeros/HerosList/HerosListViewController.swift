//
//  HerosListViewController.swift
//  SuperHeros
//
//  Created by macbook on 6/16/21.
//

protocol HerosListViewProtocol where Self: UIViewController {
    var presenter: HerosListPresenterProtocol? { get set }
}

import UIKit

class HerosListViewController: UIViewController, Storyboarded, HerosListViewProtocol {
    // MARK: outlets
    @IBOutlet fileprivate weak var collection: UICollectionView?
    
    var presenter: HerosListPresenterProtocol?
    
    static func storyboardName() -> String {
        return "HerosList"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}

extension HerosListViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let unwrappedPresenter = presenter else {
            return UICollectionViewCell()
        }
        return unwrappedPresenter.getCellForRowAt(collectionView: collectionView, indexPath: indexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        guard let unwrappedPresenter = presenter else {
            return 0
        }
        return unwrappedPresenter.getNumberOfItemsInSection()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfSections section: Int) -> Int {
        guard let unwrappedPresenter = presenter else {
            return 0
        }
        return unwrappedPresenter.getNumberOfSections()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        guard let unwrappedPresenter = presenter else {
            return CGSize()
        }
        return unwrappedPresenter.getSizeForItem()
    }
}
