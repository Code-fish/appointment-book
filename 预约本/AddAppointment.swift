//
//  AddAppointment.swift
//  预约本
//
//  Created by 张宁 on 16/5/22.
//  Copyright © 2016年 张宁. All rights reserved.
//

import UIKit

class AddAppointment: UITableViewController
{
    var newAppointment: Appointment!
    
    //控件的outlet
    @IBOutlet weak var nameInputLabel: UITextField!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var noteTextView: UITextView!
    
    
    override func viewDidLoad() {
        
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == ""{
            newAppointment.name = nameInputLabel.text!
        }
    }
    

}
