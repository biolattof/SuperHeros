//
//  API.swift
//  SuperHeros
//
//  Created by macbook on 6/16/21.
//
protocol APIConfiguration: URLRequestConvertible {
    var method: HTTPMethod { get }
    var path: String { get }
    var parameters: Parameters? { get }
}

import Alamofire

class APIClient {
    
}
