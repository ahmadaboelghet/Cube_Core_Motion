//
//  ViewController.swift
//  Cube_Core_motion
//
//  Created by aBoelghet on 8/11/17.
//  Copyright © 2017 cube. All rights reserved.
//

import UIKit
import CoreMotion
import UserNotifications


class ViewController: UIViewController {

    @IBOutlet weak var lblActivityStatus: UILabel!
    
    var motionActivityManager: CMMotionActivityManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let center = UNUserNotificationCenter.current()
        
        center.requestAuthorization(options: [.alert, .sound]) { (granted, error) in
        }
        // Do any additional setup after loading the view, typically from a nib.
        if CMMotionActivityManager.isActivityAvailable() {
            motionActivityManager?.startActivityUpdates(to: OperationQueue.current!, withHandler: {
                activityData
                in
                if activityData!.walking == true  {
                    
                     self.lblActivityStatus?.text = "Walking"
                    
                    let content = UNMutableNotificationContent()
                    
                    content.title = "Hello"
                    content.body = "I am walking"
                    content.sound = UNNotificationSound.default()
                    
                    // Deliver the notification in five seconds.
                    let trigger = UNTimeIntervalNotificationTrigger.init(timeInterval: 1, repeats: false)
                    let request = UNNotificationRequest.init(identifier: "FiveSecond", content: content, trigger: trigger)
                    
                    // Schedule the notification.
                    let center = UNUserNotificationCenter.current()
                    center.add(request) { (error) in
                        print(error!)
                    }
                    print("should have been added")

                    
                } else if activityData!.running == true {
                    let content = UNMutableNotificationContent()
                    
                     self.lblActivityStatus?.text = "Running"
                    
                    content.title = "Hello"
                    content.body = "I am running"
                    content.sound = UNNotificationSound.default()
                    
                    // Deliver the notification in five seconds.
                    let trigger = UNTimeIntervalNotificationTrigger.init(timeInterval: 1, repeats: false)
                    let request = UNNotificationRequest.init(identifier: "FiveSecond", content: content, trigger: trigger)
                    
                    // Schedule the notification.
                    let center = UNUserNotificationCenter.current()
                    center.add(request) { (error) in
                        print(error!)
                    }
                    print("should have been added")
                    
                } else if activityData!.automotive == true {
                    let content = UNMutableNotificationContent()
                    
                     self.lblActivityStatus?.text = "Automotive"
                    
                    content.title = "Hello"
                    content.body = "I am automotive"
                    content.sound = UNNotificationSound.default()
                    
                    // Deliver the notification in five seconds.
                    let trigger = UNTimeIntervalNotificationTrigger.init(timeInterval: 1, repeats: false)
                    let request = UNNotificationRequest.init(identifier: "FiveSecond", content: content, trigger: trigger)
                    
                    // Schedule the notification.
                    let center = UNUserNotificationCenter.current()
                    center.add(request) { (error) in
                        print(error!)
                    }
                    print("should have been added")
                    
                } else if activityData!.stationary == true {
                    let content = UNMutableNotificationContent()
                    
                     self.lblActivityStatus?.text = "Stationary"
                    
                    content.title = "Hello"
                    content.body = "I am staionary"
                    content.sound = UNNotificationSound.default()
                    
                    // Deliver the notification in five seconds.
                    let trigger = UNTimeIntervalNotificationTrigger.init(timeInterval: 1, repeats: false)
                    let request = UNNotificationRequest.init(identifier: "FiveSecond", content: content, trigger: trigger)
                    
                    // Schedule the notification.
                    let center = UNUserNotificationCenter.current()
                    center.add(request) { (error) in
                        print(error!)
                    }
                    print("should have been added")
                    
                }
                print("Activity Data: ", activityData!)
            })
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

