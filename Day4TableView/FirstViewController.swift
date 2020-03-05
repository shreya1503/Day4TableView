//
//  ViewController.swift
//  Day4TableView
//
//  Created by MacStudent on 2020-03-04.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController
{
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var lblName: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSave(_ sender: UIButton)
    {
        UserDefaults.standard.set(txtName.text, forKey: "name")
        
    }
    
    @IBAction func btnFetch(_ sender: UIButton)
    {
        let ud = UserDefaults.standard
        let name = ud.string(forKey: "name")
        
        lblName.text = name
    }
    
    @IBAction func btnNext(_ sender: UIButton)
    {
        
    }
}

