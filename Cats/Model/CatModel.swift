//
//  CatModel.swift
//  Cats
//
//  Created by Raul Kevin Aliaga Shapiama on 5/31/23.
//

import Foundation
import Alamofire
import UIKit

typealias Success                       = () -> Void
typealias ErrorHandler                  = (_ error: String) -> Void
typealias CatdResponseHandler         = (_ arrayDishes: [CatResponse]) -> Void
typealias CatDetailResponseHandler     = (_ objDish: CatResponse?) -> Void

struct CatsModel {
    
    func listAllCat(completionHandler: @escaping CatdResponseHandler) {
        
        let url = "https://api.thecatapi.com/v1/breeds"
        
        AF.request(url, method: .get).response { response in
            response.data?.printLog()
            let arrayCats = response.data?.toDTO([CatResponse].self) ?? []
            completionHandler(arrayCats)
        }
    }
}


extension Data {
    
    var toImage: UIImage? {
        UIImage(data: self)
    }
    
    func toDTO<Generic>(_ type: Generic.Type) -> Generic? where Generic: Decodable {
        try? JSONDecoder().decode(type, from: self)
    }
    
    func printLog() {
        let json = try? JSONSerialization.jsonObject(with: self, options: .allowFragments)
        print(json ?? "EL Servicio no tiene respuesta")
    }
}
