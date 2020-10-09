//
//  homeVC.swift
//  ropstamTest
//
//  Created by Murteza on 08/10/2020.
//  Copyright © 2020 Murteza. All rights reserved.
//

import UIKit

class homeVC: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    

    
    @IBOutlet weak var tableView: UITableView!{
    didSet{
            self.tableView.delegate = self
           self.tableView.dataSource = self
            self.tableView.reloadData()
        }
    }


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 7
        }
        
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          switch indexPath.row {
          case 0:
              self.tableView.register(UINib(nibName: "TopCell", bundle: nil), forCellReuseIdentifier: "topcell")
           
              let cell = self.tableView.dequeueReusableCell(withIdentifier:"topcell" , for: indexPath) as! TopCell

              return cell
              
          case 1:
            
                self.tableView.register(UINib(nibName: "titleCatCell", bundle: nil), forCellReuseIdentifier: "catcell1")
              let cell = self.tableView.dequeueReusableCell(withIdentifier:"catcell1" , for: indexPath) as! titleCatCell
                cell.titleLabel.text = "Our Categories"
              return cell
              
          case 2:
            
               self.tableView.register(UINib(nibName: "MidCell", bundle: nil), forCellReuseIdentifier: "midcell")
              let cell = self.tableView.dequeueReusableCell(withIdentifier:"midcell" , for: indexPath) as! MidCell
            
              return cell
          case 3:
            self.tableView.register(UINib(nibName: "titleCatCell", bundle: nil), forCellReuseIdentifier: "catcell1")
            let cell = self.tableView.dequeueReusableCell(withIdentifier:"catcell1" , for: indexPath) as! titleCatCell
            cell.titleLabel.text = "Trending Products"
              return cell
            
          case 4:
          let cell = self.tableView.dequeueReusableCell(withIdentifier:"productcell1" , for: indexPath) as! productCell
            
            return cell
            
          case 5:
             self.tableView.register(UINib(nibName: "titleCatCell", bundle: nil), forCellReuseIdentifier: "catcell1")
                    let cell = self.tableView.dequeueReusableCell(withIdentifier:"catcell1" , for: indexPath) as! titleCatCell
                    cell.titleLabel.text = "Recently Viewed Products"
                     
            
            return cell
          default:
            let cell = self.tableView.dequeueReusableCell(withIdentifier:"productcell1" , for: indexPath) as! productCell
            
            return cell
          }
      }
      
      func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
          switch indexPath.row {
          case 0:
              return  200
          case 1:
              return  45
          case 2:
                return  200
          case 3:
              return  45
          case 4:
            return  220
          case 5:
            return  45
         
          default:
              return 220
          }
      }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         print("cliecked")
          self.NextViewController(storybordid: "detailVC")
      
    }

}
