//
//  DetailFruitController.swift
//  FruitApp
//
//  Created by Eric Van Berkel on 26-03-16.
//  Copyright © 2016 SaintBrigid. All rights reserved.
//

import UIKit

class DetailFruitController: UIViewController
{
    
    
    @IBOutlet weak var TextBox: UITextField!
    
    override func viewDidLoad()
        {
        super.viewDidLoad()
        
        let userDefaults = NSUserDefaults.standardUserDefaults()
            
        TextBox.text = userDefaults.objectForKey("Rimata.detailBasePresent") as? String
        TextBox.text?.appendContentsOf(" / ")
        TextBox.text?.appendContentsOf((userDefaults.objectForKey("Rimata.detailBasePast") as? String!)!)
        TextBox.text?.appendContentsOf(" / ")
        TextBox.text?.appendContentsOf((userDefaults.objectForKey("Rimata.detailBaseFuture") as? String!)!)
        TextBox.text?.appendContentsOf(" (")
        TextBox.text?.appendContentsOf((userDefaults.objectForKey("Rimata.detailBasePresentTrans") as? String!)!)
        TextBox.text?.appendContentsOf(") ")
           
        userDefaults.setObject("", forKey: "Rimata.detailBasePresent")
        userDefaults.setObject("", forKey: "Rimata.detailBasePresentTrans")
        userDefaults.setObject("", forKey: "Rimata.detailBasePast")
        userDefaults.setObject("", forKey: "Rimata.detailBaseFuture")
  
        }
    


}
