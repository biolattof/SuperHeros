//
//  API.swift
//  SuperHeros
//
//  Created by macbook on 6/15/21.
//

import Alamofire

enum HerosService: APIConfiguration {
    case getHeros
    
    // MARK: HTTPMethod
    var method: HTTPMethod {
        switch self {
        case .getHeros:
            return .get
        }
    }
    
    // MARK: Path
    var path: String {
        switch self {
        case .getHeros:
            return "/superhero.json"
        }
    }
    
    // MARK: Parameters
    var parameters: Parameters? {
        switch self {
        case .getHeros:
            return nil
        }
    }
    
    // MARK: URLRequestConvertible
    func asURLRequest() throws -> URLRequest {
        let url = try Constants.ProductionServer.baseURL.asURL()
        
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        
        // HTTP Method
        urlRequest.httpMethod = method.rawValue
        
        // Parameters
        if let parameters = parameters {
            do {
                urlRequest.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: [])
            } catch {
                throw AFError.parameterEncodingFailed(reason: .jsonEncodingFailed(error: error))
            }
        }
        return urlRequest
    }
}
