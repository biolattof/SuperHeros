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
    var heros: [Hero] { get set }
    func getCellForRowAt(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell
    func getNumberOfItemsInSection() -> Int
    func getNumberOfSections() -> Int
    func getSizeForItem() -> CGSize
}

class HerosListPresenter: NSObject, HerosListPresenterProtocol {
    weak var view: HerosListViewProtocol?
    var interactor: HerosListInteractorProtocol?
    var router: HerosListCoordinatorProtocol?
    
    // MARK: data source
    var heros: [Hero] = []
    
    // MARK: collection methods
    func getCellForRowAt(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HeroCollectionViewCell", for: indexPath) as? HeroCollectionViewCell {
            return cell
        }
        return UICollectionViewCell()
    }
    
    func getNumberOfItemsInSection() -> Int {
        return heros.count
    }
    
    func getNumberOfSections() -> Int {
        return 1
    }
    
    func getSizeForItem() -> CGSize {
        let width = view?.view.frame.width ?? 0
        let height = view?.view.frame.height ?? 0
        return CGSize(width: width, height: height)
    }
}

