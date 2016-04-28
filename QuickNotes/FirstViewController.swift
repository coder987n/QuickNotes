//
//  FirstViewController.swift
//  QuickNotes
//
//  Created by Nipun Chhajed on 4/27/16.
//  Copyright © 2016 Program5Studios. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return noteMgr.notes.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "test")
        cell.textLabel!.text = noteMgr.notes[indexPath.row].name
        cell.detailTextLabel!.text = noteMgr.notes[indexPath.row].desc
        
        return cell
    }


}

