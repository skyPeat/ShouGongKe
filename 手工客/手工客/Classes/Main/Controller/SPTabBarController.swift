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
        
        view.backgroundColor = UIColor.red
        //        0、添加自控制器
        addChildViewControllers()
        //        1、设置导航条的内容
        
        
    }
    
    
    
}
//MARK:- 添加子控制器
extension SPTabBarController{
    func addChildViewControllers(){
        //        0、Home(首页)
        childViewControllersWith(SPHomeViewController(), title: "首页", normalImageName:"icon_shouye_", selectedImageName: "icon_shouye_")
        //        1、Course(教程)
        childViewControllersWith(SPCourseViewController(), title: "教程", normalImageName: "icon_jiaocheng_", selectedImageName: "icon_jiaocheng_")
        //        2、CrafterCircle(手工圈)
        childViewControllersWith(SPCrafterCircleController(), title: "手工圈", normalImageName: "icon_shougongquan_", selectedImageName: "icon_shougongquan_")
        //        3、Fair(市集)
        childViewControllersWith(SPFairViewController(), title: "市集", normalImageName: "icon_shiji_", selectedImageName: "icon_shiji_")
        //        4、Mine(我的)
        childViewControllersWith(SPMineViewController(), title: "我的", normalImageName: "icon_wode_", selectedImageName: "icon_wode_")
        
    }
    func childViewControllersWith(_ viewController : UIViewController,title : String,normalImageName : String,selectedImageName : String){
        //       0、 设置子控制器tabBarButton的属性
        viewController.title = title
        viewController.tabBarItem.image = UIImage(named: normalImageName)
        // 设置选中时图片渲染红色
        let image = UIImage(named: selectedImageName)
        tabBar.tintColor = UIColor.red
        viewController.tabBarItem.selectedImage = image
        //        1、包装一个导航控制器
        let navVC = SPNavigationController(rootViewController: viewController)
        //        2、添加到SPTabBarController中
        addChildViewController(navVC)
    }
}
//MARK:- 设置导航条的内容
