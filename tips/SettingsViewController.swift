//
//  SettingsViewController.swift
//  tips
//
//  Created by Ankit Jasuja on 7/7/16.
//  Copyright © 2016 Ankit Jasuja. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var defaults = NSUserDefaults.standardUserDefaults()
        var defaultTipIndex = defaults.integerForKey("default.tip.index")
        tipControl.selectedSegmentIndex = defaultTipIndex
        // Do any additional setup after loading the view.
    }

    @IBAction func onDefaultTipChange(sender: AnyObject) {
        var defaultTipIndex = tipControl.selectedSegmentIndex
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(defaultTipIndex, forKey: "default.tip.index")
        defaults.synchronize()
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
