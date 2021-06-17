//
//  HeroCollectionViewCell.swift
//  SuperHeros
//
//  Created by macbook on 6/17/21.
//

import UIKit

class HeroCollectionViewCell: UICollectionViewCell {
    @IBOutlet var name: UILabel!
    @IBOutlet var imageURL: UIImageView!
    
    func configure(hero: Hero) {
        self.name.text = hero.name
        self.imageURL.setImageFromUrl(hero.images.smallImageURL, completion: nil)
    }
}
