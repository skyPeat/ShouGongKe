//
//  UIBarButtonItem.swift
//  手工客
//
//  Created by tianfeng pan on 16/12/18.
//  Copyright © 2016年 tianfeng pan. All rights reserved.
//

import UIKit
func item(image:UIImage,target:Any,action:Selector) -> (UIBarButtonItem) {
    let button = UIButton(type: .custom)
    button.setImage(image, for: .normal)
    button.sizeToFit()
    button.addTarget(target, action: action, for:.touchUpInside)
    let buttonView = UIView(frame: CGRect(x: 0, y: 0, width: image.size.width, height: image.size.height))
    buttonView.addSubview(button)
    let barButtonItem = UIBarButtonItem(customView: buttonView)
    
    return barButtonItem
}
