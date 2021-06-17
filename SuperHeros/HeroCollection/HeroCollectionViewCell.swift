//
//  HeroCollectionViewCell.swift
//  SuperHeros
//
//  Created by macbook on 6/17/21.
//

import UIKit

class HeroCollectionViewCell: UICollectionViewCell {
    @IBOutlet var name: UILabel!
    @IBOutlet var image: UIImageView!
    
    func configure(hero: Hero) {
        name.text = hero.name
        image.setImageFromUrl(hero.images.smallImageURL, completion: nil)
        contentView.layer.cornerRadius = 5
    }
}
