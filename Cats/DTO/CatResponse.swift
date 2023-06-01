//
//  Cat.swift
//  Cats
//
//  Created by Raul Kevin Aliaga Shapiama on 5/31/23.
//

import Foundation

struct CatResponse: Decodable {
    
    let id: String
    let name: String
    let origin: String
    let intelligence: Int
//    let referenceImageId: String
    
    enum CodingKeys:String, CodingKey {
        case id = "id"
        case name = "name"
        case origin = "origin"
        case intelligence = "intelligence"
//        case referenceImageId = "reference_image_id"
    }

}
