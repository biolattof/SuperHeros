//
//  UIImage+utils.swift
//  SuperHeros
//
//  Created by macbook on 6/17/21.
//

import UIKit
import Alamofire
import AlamofireImage

extension UIImageView {
    func setImageFromUrl(_ imgUrl: String, completion: (() -> Void)?) {
        if let URL = Foundation.URL(string: imgUrl) {
            self.contentMode = .scaleAspectFill
            self.layer.borderWidth = 0
            
            self.af.cancelImageRequest()
            self.af.setImage(withURL: URL,
             cacheKey: imgUrl,
             placeholderImage: nil,
             serializer: nil,
             filter: nil,
             progress: nil,
             progressQueue: DispatchQueue.main,
             imageTransition: .noTransition,
             runImageTransitionIfCached: true,
             completion: nil)
        }
    }
}
