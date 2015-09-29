//
//  CatalogCollectionViewCell.swift
//  SwiftyCollectionView
//
//  Created by Sugam Kalra on 28/09/15.
//  Copyright © 2015 Sugam Kalra. All rights reserved.
//

import UIKit

class CatalogCollectionViewCell: UICollectionViewCell
{
    
    @IBOutlet weak var catalogImageView: UIImageView!
    
    var selectable:Bool?
    
    
    func reset()
    {
        self.selectable = true
        self.backgroundColor = UIColor.brownColor()
        self.catalogImageView.alpha = 1.0
    }
    
    func unselectable()
    {
        self.deselect()
        self.selectable = false
        self.backgroundColor = UIColor.blackColor()
        self.catalogImageView.alpha = 0.5
    }
    
    func select()
    {
        if ((self.selectable) != nil){
            self.backgroundColor = UIColor.brownColor()
            self.catalogImageView.alpha = 0.7
        }
    }
    
    func deselect()
    {
        self.catalogImageView.alpha = 1.0
    }
    

    
}
