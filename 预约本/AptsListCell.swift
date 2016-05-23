//
//  AptsListCell.swift
//  预约本
//
//  Created by 张宁 on 16/5/22.
//  Copyright © 2016年 张宁. All rights reserved.
//

import UIKit

class AptsListCell: UITableViewCell
{

    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var notesLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var name: String = ""{
        didSet{
            if (name != oldValue){
                nameLabel.text = name
            }
        }
    }

    //想想如何在这里将time改为date类型，并进行格式化输出timelabel
    var time: String = ""{
        didSet{
            if (time != oldValue){
                timeLabel.text = time
            }
        }
    }
    
}
