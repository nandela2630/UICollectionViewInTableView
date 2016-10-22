//
//  CustomTableCellFile.swift
//  CoolectionViewHorizontalScroll
//
//  Created by wflogin on 21/10/16.
//  Copyright © 2016 wflogin. All rights reserved.
//

import Foundation
import UIKit


class CustomTableViewCell: UITableViewCell {
    
    
    @IBOutlet var collectionView: UICollectionView!
    
    let imageNames = ["airplane", "arctichare", "baboon", "boy", "frymire","goldhill","serrano","watch","zelda"]
    
    let gameNames = ["candy_crush", "cut_the_ropes", "game_1", "little_pet_shop", "zuba","zuba","zuba","zuba","zuba"]
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}


extension CustomTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageNames.count
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! CustomCollectionCell
        
        cell.collectionImageView.image = UIImage(named: imageNames[indexPath.row])
        
        cell.collectionImageTitleLbl.text = gameNames[indexPath.row]
        

        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        let clickedIndex = imageNames[indexPath.row]
        
        print(clickedIndex)
        
        
    }
    
}

