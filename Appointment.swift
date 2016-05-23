//
//  Appointment.swift
//  预约本
//
//  Created by 张宁 on 16/5/22.
//  Copyright © 2016年 张宁. All rights reserved.
//

import Foundation
import RealmSwift

class Appointment: Object {
    
    dynamic var name = ""
    dynamic var time = NSDate()
    dynamic var notes = ""
    dynamic var colorTag = ""
    
}

class Client: Object {
    dynamic var name = ""
    dynamic var phoneNum = ""
    dynamic var notes = ""
    dynamic var colorTag = ""
}

