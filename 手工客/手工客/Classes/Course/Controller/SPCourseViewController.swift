//
//  SPCourseViewController.swift
//  手工客
//
//  Created by tianfeng pan on 16/12/17.
//  Copyright © 2016年 tianfeng pan. All rights reserved.
//

import UIKit

class SPCourseViewController: UITableViewController {
    var previueButton : UIButton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        设置导航条的内容
        setUpNavigationBar()
    }
    
}
extension SPCourseViewController{
    
    
    func setUpNavigationBar(){
        //        left
        navigationItem.leftBarButtonItem = item(image:UIImage.init(named:"nav_jilu")!,target: self, action: #selector(jump))
        //        right
        navigationItem.rightBarButtonItem = item(image:UIImage.init(named:"nav_man")!,target: self, action: #selector(jump))
        //        backgroundColor
        navigationController?.navigationBar.setBackgroundImage(UIImage.init(named: "navigationBarBg")!, for: .default)
        //        middle
        let array = ["图文","视频","专题"]
        let middleView = UIView()
        var btnX : CGFloat = 0
        let btnY : CGFloat = 0
        let btnW : CGFloat = 70
        let btnH : CGFloat = 17
        let margin : CGFloat = 0.5
        middleView.backgroundColor = UIColor(white: 1.0, alpha: 0.6)
        middleView.frame = CGRect(x: 0, y: 0, width: (btnW + margin) * CGFloat(array.count) - margin, height: btnH)
        for i in 0 ..< array.count {
            let button = UIButton(type: .custom)
            button.tag = i
            button.backgroundColor = UIColor.red
            button.setTitle(array[i], for: .normal)
            button.sizeToFit()
            button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
            button.setTitleColor(UIColor(red: 245.0, green: 245.0, blue: 245.0, alpha: 0.7), for: .normal)
            button.setTitleColor(UIColor.white, for: .selected)
            btnX = (btnW + margin) * CGFloat(i)
            button.frame = CGRect(x: btnX  , y: btnY, width: btnW, height: btnH)
            //            监听按钮点击
            button.addTarget(self, action: #selector(topClick(button:)), for: .touchUpInside)
            middleView.addSubview(button)
        }
        navigationItem.titleView = middleView
    }
    
    
    func jump(){
        
    }
    func topClick(button : UIButton ){
        previueButton.isSelected = false
        button.isSelected = !button.isSelected
        previueButton = button
    }
}
