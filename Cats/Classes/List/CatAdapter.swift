//
//  CatAdapter.swift
//  Cats
//
//  Created by Raul Kevin Aliaga Shapiama on 5/31/23.
//

import Foundation
import UIKit

class CatAdapter: NSObject {
    
    private unowned let controller: ViewController
    
    var arrayData = [CatResponse]()
    
    init(controller: ViewController) {
        self.controller = controller
    }
    
    func initAdapterWithTableView(_ tableView: UITableView) {
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension CatAdapter: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.arrayData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let objCat = self.arrayData[indexPath.row]
        return CatTableViewCell.buildInTableView(tableView, indexPath: indexPath, objCat: objCat)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
}

extension CatAdapter: UITableViewDelegate {
    
}
