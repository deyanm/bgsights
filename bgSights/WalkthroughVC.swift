//
//  WalkthroughVC.swift
//  bgSights
//
//  Created by Deyan Marinov on 1/31/16.
//  Copyright © 2016 Deyan Marinov. All rights reserved.
//

import UIKit

class WalkthroughVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func skipPressed(sender: AnyObject) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}
