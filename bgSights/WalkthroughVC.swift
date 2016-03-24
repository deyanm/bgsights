//
//  WalkViewController.swift
//  bgSights
//
//  Created by Deyan Marinov on 1/31/16.
//  Copyright © 2016 Deyan Marinov. All rights reserved.
//

import UIKit

class WalkthroughVC: UIViewController {
    
    @IBOutlet weak var voditel: UIImageView!
    @IBOutlet weak var sun: UIImageView!
    @IBOutlet weak var cloud: UIImageView!
    @IBOutlet weak var person: UIImageView!
   
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        voditel.center.x  -= view.bounds.width
        sun.center.x -= view.bounds.width
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animateWithDuration(3.0, animations: {
            self.voditel.center.x += self.view.bounds.width
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func skipPressed(sender: AnyObject) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}
