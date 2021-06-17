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
    func getHeros()
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
    
    // MARK: methods
    func getHeros() {
        interactor?.getHeros(completion: { (result) in
            switch result {
            case .success(let heros):
                self.heros = heros
                self.view?.reloadCollectionSafely()
            case .failure(let error):
                // show error on vc
                break
            }
        })
    }
    
    // MARK: collection methods
    func getCellForRowAt(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HeroCollectionViewCell",
                                                         for: indexPath) as? HeroCollectionViewCell {
            cell.configure(hero: heros[indexPath.row])
            return cell
        }
        return UICollectionViewCell()
    }
    
    func getNumberOfItemsInSection() -> Int {
        return heros.count
    }
    
    func getNumberOfSections() -> Int {
        return heros.isEmpty ? 0 : 1
    }
    
    func getSizeForItem() -> CGSize {
        let width = ((view?.view.frame.width ?? 0) / 2) - 15
        return CGSize(width: width, height: width)
    }
}
