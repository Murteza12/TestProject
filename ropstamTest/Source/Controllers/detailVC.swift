//
//  detailVC.swift
//  ropstamTest
//
//  Created by Murteza on 09/10/2020.
//  Copyright © 2020 Murteza. All rights reserved.
//

import UIKit

class detailVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   
    @IBAction func backBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
