//
//  SecondViewController.swift
//  QuickNotes
//
//  Created by Nipun Chhajed on 4/27/16.
//  Copyright © 2016 Program5Studios. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet var txtNote: UITextField!
    @IBOutlet var txtDesc: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Events
    @IBAction func btnAddNotes_Click(sender: UIButton) {
        noteMgr.addNote(txtNote.text!, desc: txtDesc.text!)
        self.view.endEditing(true)
        txtNote.text = ""
        txtDesc.text = ""
        self.tabBarController?.selectedIndex = 0
    }
    
    //IOS Touch Functions
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

