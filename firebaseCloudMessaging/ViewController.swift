//
//  ViewController.swift
//  firebaseCloudMessaging
//
//  Created by Higher Visibility on 8/24/16.
//  Copyright © 2016 Buzy Beez. All rights reserved.
//

import UIKit
import Firebase
import FirebaseInstanceID
import FirebaseMessaging


class ViewController: UIViewController {

    
    
    @IBOutlet weak var labelText: UILabel!

    @IBAction func logToken(sender: AnyObject) {
        // [START get_iid_token]
        let token = FIRInstanceID.instanceID().token()
        print("InstanceID token: \(token!)")
        // [END get_iid_token]
        
        // Showing token
        labelText.text = token
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
