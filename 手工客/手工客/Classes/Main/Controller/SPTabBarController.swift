//
//  SPTabBarController.swift
//  手工客
//
//  Created by tianfeng pan on 16/12/17.
//  Copyright © 2016年 tianfeng pan. All rights reserved.
//

import UIKit

class SPTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.redColor()
//        0、添加自控制器
        addChildViewControllers()
//        1、设置导航条的内容
        
    }

    
    
}
//MARK:- 添加自控制器
extension SPTabBarController{
    func addChildViewControllers(){
//        0、Home(首页)
        childViewControllersWith(SPHomeViewController(), title: "首页", normalImageName:"Snip20161217_16", selectedImageName: "Snip20161217_16")
//        1、Course(教程)
        childViewControllersWith(SPCourseViewController(), title: "教程", normalImageName: "Snip20161217_7", selectedImageName: "Snip20161217_7")
//        2、CrafterCircle(手工圈)
         childViewControllersWith(SPCrafterCircleController(), title: "手工圈", normalImageName: "icon_shougongquan_", selectedImageName: "icon_shougongquan_")
//        3、Fair(市集)
         childViewControllersWith(SPFairViewController(), title: "市集", normalImageName: "Snip20161217_11", selectedImageName: "Snip20161217_11")
//        4、Mine(我的)
         childViewControllersWith(SPMineViewController(), title: "我的", normalImageName: "Snip20161217_3", selectedImageName: "Snip20161217_3")
        
    }
    func childViewControllersWith(viewController : UIViewController,title : String,normalImageName : String,selectedImageName : String){
//       0、 设置子控制器tabBarButton的属性
        viewController.title = title

            
        viewController.tabBarItem.image = UIImage(named: normalImageName)
        viewController.tabBarItem.selectedImage = UIImage(named: selectedImageName)
//        1、包装一个导航控制器
        let navVC = SPNavigationController(rootViewController: viewController)
//        2、添加到SPTabBarController中
        addChildViewController(navVC)
    }
}
//MARK:- 设置导航条的内容
