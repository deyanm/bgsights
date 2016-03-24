//
//  ViewController.swift
//  bgSights
//
//  Created by Deyan Marinov on 1/8/16.
//  Copyright © 2016 Deyan Marinov. All rights reserved.
//

import UIKit

class ViewController: UITableViewController, MenuTransitionManagerDelegate  {
    
    let menuTransitionManager = MenuTransitionManager()
    
    var introModalDidDisplay = NSUserDefaults.standardUserDefaults().boolForKey("introModalDidDisplay")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if NSUserDefaults.standardUserDefaults().isFirstLaunch() {
            let walkVC = self.storyboard?.instantiateViewControllerWithIdentifier("walk0") as! WalkthroughVC
            walkVC.modalPresentationStyle = UIModalPresentationStyle.FormSheet
            self.presentViewController(walkVC, animated: true, completion: nil)
        }
        
        self.title = "Начало"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func dismiss() {
        dismissViewControllerAnimated(true, completion: nil)
    }

    // MARK: - Navigation
    @IBAction func unwindToHome(segue: UIStoryboardSegue) {
        let sourceController = segue.sourceViewController as! MenuTableViewController
        self.title = sourceController.currentItem
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let menuTableViewController = segue.destinationViewController as! MenuTableViewController
        menuTableViewController.currentItem = self.title!
        menuTableViewController.transitioningDelegate = menuTransitionManager
        menuTransitionManager.delegate = self
    }
}

extension NSUserDefaults {
    func isFirstLaunch() -> Bool {
        if !NSUserDefaults.standardUserDefaults().boolForKey("LaunchedOnce") {
            NSUserDefaults.standardUserDefaults().setBool(true, forKey: "LaunchedOnce")
            NSUserDefaults.standardUserDefaults().synchronize()
            return true
        }
        return false
    }
}