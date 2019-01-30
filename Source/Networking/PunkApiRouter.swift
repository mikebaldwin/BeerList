//
//  PunkApiRouter.swift
//  BeerList
//
//  Created by Michael Baldwin on 1/30/19.
//  Copyright © 2019 mikebaldwin.co. All rights reserved.
//

import Alamofire
import Foundation

enum PunkApiRouter: URLRequestConvertible {
    
    static let baseUrlString = "https://api.punkapi.com/v2/"
    
    case getBeerList
    // Additional requests would follow, defined as cases
    
    var method: HTTPMethod {
        switch self {
        case .getBeerList:
            return .get
            // Additional cases would be implemented here
        }
    }
    
    var path: String {
        switch self {
        case .getBeerList:
            return "/beers"
            // Additional cases would be implemented here
        }
    }
    
    func asURLRequest() throws -> URLRequest {
        let url: URL = {
            var url = URL(string: PunkApiRouter.baseUrlString)!
            switch self {
            case .getBeerList:
                url.appendPathComponent(path)
            }
            return url
        }()
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = method.rawValue
        return urlRequest
    }

}
