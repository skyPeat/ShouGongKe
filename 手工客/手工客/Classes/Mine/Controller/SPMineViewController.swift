//
//  SPMineViewController.swift
//  手工客
//
//  Created by tianfeng pan on 16/12/17.
//  Copyright © 2016年 tianfeng pan. All rights reserved.
//

import UIKit

class SPMineViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       setUpNavigationBar()
    }
}
extension SPMineViewController{
    func setUpNavigationBar(){
              //        backgroundColor
        navigationController?.navigationBar.setBackgroundImage(UIImage.init(named: "navigationBarBg")!, for: .default)
    }
    
   
}
