//
//  AppDelegate.swift
//  Terrestrial test
//
//  Created by Alexander Fedosov on 23.05.16.
//  Copyright © 2016 Alexander Fedosov. All rights reserved.
//

import UIKit
import SnapKit
import Terrestrial
import TerrestrialPhotoshoot

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        print("Test string")
        print("Another test string")
        
        let viewConroller = UIViewController()
        viewConroller.view.backgroundColor = UIColor.whiteColor()
        
        let label = UILabel()
        label.textAlignment = .Center
        label.text = "Test manually added string".translated
        label.numberOfLines = 0
        
        viewConroller.view.addSubview(label)
        label.snp_makeConstraints { (make) in
            make.edges.equalTo(viewConroller.view.snp_edges)
        }
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.rootViewController = viewConroller
        window?.makeKeyAndVisible()
        
        return true
    }
}

