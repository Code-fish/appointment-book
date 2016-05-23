//
//  AppointmentsTableTableViewController.swift
//  预约本
//
//  Created by 张宁 on 16/5/20.
//  Copyright © 2016年 张宁. All rights reserved.
//

import UIKit

class AppointmentsTableTableViewController: UITableViewController
{
    let cellTableIdentifier = "CellForAppointmentList"
    
    //声明一个字典，及存放字典的keys的数组。
    var myArray: [String: [[String: String]]]!
    var keys: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        let nib = UINib(nibName: "AptsListCell", bundle: nil)
        tableView.registerNib(nib, forCellReuseIdentifier: cellTableIdentifier)
        
        
        //将数组的sample数据写入plist
//        let filePath: String = NSHomeDirectory() + "/Documents/sampleData.plist"
//        NSDictionary(dictionary: myArray).writeToFile(filePath, atomically: true)
        
        //删除沙箱中的weblist.plist的一个历史数据，练习一下文件删除操作
        
        
        //读取沙箱中sampleData.plist中的数据到myArray字典
        myArray = NSDictionary(contentsOfFile: NSHomeDirectory() + "/Documents/sampleData.plist")! as! [String : [[String : String]]]
        print(myArray)
        
        keys = [String](myArray.keys)
        print(keys)
        
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //添加“添加预约”表单页面的回退方法；一个取消，一个保存
    @IBAction func cancelAddAppointment(segue: UIStoryboardSegue){
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func saveAddAppointment(segue: UIStoryboardSegue){
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    
    
    

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return keys.count
        
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        let key = keys[section]
        let aptSection = myArray[key]!
        return aptSection.count
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return keys[section]
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellTableIdentifier, forIndexPath: indexPath) as! AptsListCell
        // Configure the cell...
        
        let key = keys[indexPath.section]
        let rowData = myArray[key]!
        
        cell.nameLabel.text = rowData[indexPath.row]["name"]
        cell.timeLabel.text = rowData[indexPath.row]["time"]
        cell.notesLabel.text = rowData[indexPath.row]["notes"]

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
