//
//  DeleteViewController.swift
//  InteractionTest
//
//  Created by Eric Van Berkel on 09-01-16.
//  Copyright © 2016 SaintBrigid. All rights reserved.
//

import UIKit

class DeleteFruitController: UIViewController {

    
    @IBAction func noDelete(sender: AnyObject)
        {
        let userDefaults = NSUserDefaults.standardUserDefaults()
        userDefaults.setObject("", forKey: "deleteFruit")
           return
        }
    
    @IBAction func yesDelete(sender: AnyObject)
        {
        let userDefaults = NSUserDefaults.standardUserDefaults()
        userDefaults.setObject("yesDelete", forKey: "deleteFruit")
        return
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

