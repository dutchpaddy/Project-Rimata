//
//  RimataTableViewController.swift
//  InteractionTest
//
//  Created by Eric Van Berkel on 09-01-16.
//  Copyright © 2016 SaintBrigid. All rights reserved.
//

import UIKit

class RimataTableViewController: UITableViewController {
    
    var fde = RimataDataEngine()
   
    @IBOutlet weak var addButton: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fde.sort()
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return fde.getRimataCount()
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("RimataCell", forIndexPath: indexPath)
        
        // Configure the cell...
        
        cell.textLabel?.text = fde.getRimataBasePresentAt(indexPath.row)
        cell.detailTextLabel?.text = fde.getRimataBasePresentTransAt(indexPath.row)
        return cell
    }
    
    
    override func tableView(tableView: UITableView, accessoryButtonTappedForRowWithIndexPath indexPath: NSIndexPath)
    {
       
        let detailIx:Int = indexPath.row
        let present = fde.getRimataBasePresentAt(detailIx)
        let presentTrans = fde.getRimataBasePresentTransAt(detailIx)
        let past = fde.getRimataBasePastAt(detailIx)
        let future = fde.getRimataBaseFutureAt(detailIx)
       
        let userDefaults = NSUserDefaults.standardUserDefaults()
        userDefaults.setObject(present, forKey: "Rimata.detailBasePresent")
        userDefaults.setObject(presentTrans, forKey: "Rimata.detailBasePresentTrans")
        userDefaults.setObject(past, forKey: "Rimata.detailBasePast")
        userDefaults.setObject(future, forKey: "Rimata.detailBaseFuture")
   }

    
}
