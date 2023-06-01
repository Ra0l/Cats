//
//  CatPresenter.swift
//  Cats
//
//  Created by Raul Kevin Aliaga Shapiama on 5/31/23.
//

import Foundation


struct CatPresenter {
    private unowned let controller: ViewController
    private let catModel = CatsModel()
    init(controller: ViewController) {
        self.controller = controller
    }
    
    func listAll() {
        
        self.catModel.listAllCat { arrayDishes in
            self.controller.reloadData(arrayDishes)
        }
    }
    
    func didLoad() {
        self.controller.initAdapters()
        self.listAll()
    }
}
