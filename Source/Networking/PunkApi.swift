//
//  PunkApi.swift
//  BeerList
//
//  Created by Michael Baldwin on 1/28/19.
//  Copyright © 2019 mikebaldwin.co. All rights reserved.
//

import Alamofire
import Foundation

struct PunkApi {
    
    func getBeerList(success: @escaping ([Beer]) -> Void,
                     failure: @escaping (Error) -> Void) {
        let endpoint = "https://api.punkapi.com/v2/beers"
        Alamofire
            .request(endpoint)
            .validate()
            .responseData(completionHandler: { response in
                do {
                    guard let data = response.result.value else { return }
                    let beers = try JSONDecoder().decode([Beer].self, from: data)
                    success(beers)
                } catch {
                    failure(error)
                }
            })
    }
}
