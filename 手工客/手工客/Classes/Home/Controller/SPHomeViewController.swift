//
//  SPHomeViewController.swift
//  手工客
//
//  Created by tianfeng pan on 16/12/17.
//  Copyright © 2016年 tianfeng pan. All rights reserved.
//

import UIKit

class SPHomeViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white;
        setUpNavigationBar()
    }
    
    
}
extension SPHomeViewController{
    func setUpNavigationBar(){
        //        left
        navigationItem.leftBarButtonItem = item(image:UIImage.init(named:"nav_jilu")!,target: self, action: #selector(jump))
        //        right
        navigationItem.rightBarButtonItem = item(image:UIImage.init(named:"nav_search")!,target: self, action: #selector(jump))
        //        backgroundColor
        navigationController?.navigationBar.setBackgroundImage(UIImage.init(named: "navigationBarBg")!, for: .default)
    }
    
    func jump(){
        
    }
    
}

