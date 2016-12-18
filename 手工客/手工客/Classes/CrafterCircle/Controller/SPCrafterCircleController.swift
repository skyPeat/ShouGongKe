//
//  SPCrafterCircleController.swift
//  手工客
//
//  Created by tianfeng pan on 16/12/17.
//  Copyright © 2016年 tianfeng pan. All rights reserved.
//

import UIKit

class SPCrafterCircleController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        设置导航条的内容
    setUpNavigationBar()
        
    }

}
extension SPCrafterCircleController{
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
