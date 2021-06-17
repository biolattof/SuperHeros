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
    @IBOutlet var bannerView: UIView!
    
    func configure(hero: Hero) {
        name.text = hero.name
        image.setImageFromUrl(hero.images.smallImageURL, completion: nil)
        contentView.layer.cornerRadius = 5
        contentView.layer.borderWidth = 1
        contentView.layer.borderColor = UIColor.white.cgColor
        bannerView.layer.borderWidth = 1
        bannerView.layer.borderColor = UIColor.white.cgColor
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        image.image = nil
    }
}
