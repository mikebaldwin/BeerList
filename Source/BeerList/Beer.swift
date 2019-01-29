//
//  Beer.swift
//  BeerList
//
//  Created by Michael Baldwin on 1/28/19.
//  Copyright © 2019 mikebaldwin.co. All rights reserved.
//

import Foundation

struct Beer {
    let id: Int
    let name: String
    let tagline: String
    let description: String
    let imageUrl: String
}

extension Beer: Decodable {
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case tagline
        case description
        case imageUrl = "image_url"
    }
}
