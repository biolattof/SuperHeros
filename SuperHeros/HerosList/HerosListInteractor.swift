//
//  HerosListInterator.swift
//  SuperHeros
//
//  Created by macbook on 6/16/21.
//

import UIKit
import Alamofire

protocol HerosListInteractorProtocol: class {
    var presenter: HerosListPresenterProtocol? { get set }
    func getHeros(completion: @escaping (AFResult<[Hero]>) -> Void)
}

class HerosListInteractor: NSObject, HerosListInteractorProtocol {
    weak var presenter: HerosListPresenterProtocol?
    
    func getHeros(completion: @escaping (AFResult<[Hero]>) -> Void) {
        AF.request(HerosService.getHeros)
            .responseDecodable { (response: AFDataResponse<[Hero]>) in
                completion(response.result)
            }
    }
}
