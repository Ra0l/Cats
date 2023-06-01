//
//  ViewController.swift
//  Cats
//
//  Created by Raul Kevin Aliaga Shapiama on 5/31/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tblCats: UITableView!
    
    private lazy var presenter : CatPresenter = { CatPresenter(controller: self)}()
    private lazy var listCatAdapter    : CatAdapter = { CatAdapter(controller: self) }()
    
}

extension ViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tblCats.register(UINib(nibName: "CatTableViewCell", bundle: nil), forCellReuseIdentifier: "CatTableViewCell")
        self.initAdapters()
        self.presenter.didLoad()
    }
    
    func initAdapters() {
        self.listCatAdapter.initAdapterWithTableView(self.tblCats)
    }
    
    func reloadData(_ arrayData: [CatResponse]) {
        self.listCatAdapter.arrayData = arrayData
        self.tblCats.reloadData()
    }
}
