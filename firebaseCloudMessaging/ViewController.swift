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


class ViewController: UIViewController, UITextFieldDelegate{
    
    let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate

    @IBOutlet weak var message: UILabel!

    @IBOutlet weak var textBox: UITextField!
    

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        view.endEditing(true)
    }

    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var showDay: UILabel!
    
    
    @IBAction func dayToday(sender: AnyObject) {
        let chossenDate = self.datePicker.date
        let formater = NSDateFormatter()
        formater.dateFormat = "EEEE"
        
        let day = formater.stringFromDate(chossenDate)
        let result = "That was a \(day)"
        
        // creating UI alert controller
        showDay.text = result
//        message.text = appDelegate.userInfo!
        
        
        
    }
    
    @IBAction func logToken(sender: AnyObject) {
        // [START get_iid_token]
        let token = FIRInstanceID.instanceID().token()
        print("InstanceID token: \(token!)")
        // [END get_iid_token]
        
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
