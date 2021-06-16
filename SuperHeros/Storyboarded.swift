//
//  Storyboarded.swift
//  SuperHeros
//
//  Created by macbook on 6/16/21.
//

import Foundation
import UIKit

protocol Storyboarded {
    static func instantiate() -> Self
    static func storyboardName() -> String
}

extension Storyboarded where Self: UIViewController {
    static func instantiate() -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: storyboardName(), bundle: nil)
        
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
