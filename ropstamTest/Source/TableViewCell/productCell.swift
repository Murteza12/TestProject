//
//  productCell.swift
//  ropstamTest
//
//  Created by Murteza on 09/10/2020.
//  Copyright © 2020 Murteza. All rights reserved.
//

import UIKit

class productCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
  
    var productArray:[(names:String,rent:String,image:String)] =
        []
    
   
    @IBOutlet weak var collectionView: UICollectionView!{
        didSet{
            self.collectionView.delegate = self
            self.collectionView.dataSource = self
            
            self.collectionView.register(UINib(nibName: "BottomCollCell", bundle: nil), forCellWithReuseIdentifier: "cell")
            self.collectionView.reloadData()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        productArray.append((names: "Safe Bolrea", rent: "$849/month", image: "p1"))
        productArray.append((names: "Dining Table", rent: "$949/month", image: "p2"))
        productArray.append((names: "Fabric Safe", rent: "$999/month", image: "p3"))
        productArray.append((names: "Safe Bolrea", rent: "$849/month", image: "p1"))
               productArray.append((names: "Dining Table", rent: "$949/month", image: "p2"))

        

    }
    
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productArray.count
      }
      
      func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! BottomCollCell
        cell.titleProductlbl.text = self.productArray[indexPath.row].names
          cell.renlbl.text = self.productArray[indexPath.row].rent
        cell.imageView.image = UIImage(named:self.productArray[indexPath.row].image)
      
        return cell
      }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
         let width = (self.frame.size.width - 20) //some width
      
        return CGSize(width: width/3.1, height: 220)
       
         
      }
    

}
