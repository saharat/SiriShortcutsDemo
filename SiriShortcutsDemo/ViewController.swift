//
//  ViewController.swift
//  SiriShortcutsDemo
//
//  Created by Saharat Petcharayutthpan on 2/10/2561 BE.
//  Copyright © 2561 saharatpe. All rights reserved.
//

import UIKit
import Intents

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }
    
    func setup() {
        
        let activity = NSUserActivity(activityType: "com.saharatpe.SiriShortcutsDemo.helloFromTheOtherSide")
        activity.title = "Hello From The Other Side"
        activity.userInfo = ["function" : "helloFromTheOtherSide"]
        activity.isEligibleForSearch = true
        activity.isEligibleForPrediction = true
        activity.persistentIdentifier = NSUserActivityPersistentIdentifier.init("com.saharatpe.SiriShortcutsDemo.helloFromTheOtherSide")
        view.userActivity = activity
        activity.becomeCurrent()
        

        let activity2 = NSUserActivity(activityType: "com.saharatpe.SiriShortcutsDemo.com.saharatpe.SiriShortcutsDemo.helloItsMe")
        activity2.title = "Hello It's Me"
        activity2.userInfo = ["function" : "helloItsMe"]
        activity2.isEligibleForSearch = true
        activity2.isEligibleForPrediction = true
        activity2.persistentIdentifier = NSUserActivityPersistentIdentifier.init("com.saharatpe.SiriShortcutsDemo.com.saharatpe.SiriShortcutsDemo.helloItsMe")
        view.userActivity = activity2
        activity2.becomeCurrent()

    }
    
    func recieveFromThtOtherSide() {
        let alert = UIAlertController(title: "Hello From The Other Side!", message: "Hello I am here !!!!!", preferredStyle: .alert)
        let ok = UIAlertAction.init(title: "OK", style: .default)
        alert.addAction(ok)
        self.present(alert, animated: true)
    }
    
    func recieveItsMe() {
        let alert = UIAlertController(title: "Hello, It's Me!", message: "Hi dude.", preferredStyle: .alert)
        let ok = UIAlertAction.init(title: "OK", style: .default)
        alert.addAction(ok)
        self.present(alert, animated: true)
    }



}

