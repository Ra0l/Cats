//
//  Cat.swift
//  Cats
//
//  Created by Raul Kevin Aliaga Shapiama on 5/31/23.
//

import Foundation

struct Cat{
    
    let id: String
    let name: String
    let origin: String
    let intelligence: Int
//    let referenceImageId: String
    
    init(response: CatResponse) {
        self.id = response.id
        self.name = response.name
        self.origin = response.origin
        self.intelligence = response.intelligence
//        self.referenceImageId = response.referenceImageId
    }
}
