//
//  ViewController.swift
//  SwiftyCollectionView
//
//  Created by Sugam Kalra on 28/09/15.
//  Copyright © 2015 Sugam Kalra. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate
{

    @IBOutlet weak var collectionView: UICollectionView!
    
    var catalogCollectionViewCell:CatalogCollectionViewCell?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.collectionView.layer.cornerRadius = 8.0
        
        self.collectionView.allowsMultipleSelection = true
    }
    
    
    // Mark - Collection view Data Source and Delegate
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return 20
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("CatalogCollectionViewCell", forIndexPath: indexPath) as! CatalogCollectionViewCell
        
        cell.reset()
        
        if(indexPath.row == 0)
        {
            cell.catalogImageView.image = UIImage(named:"image001")
        }
        else if(indexPath.row % 2 == 0)
        {
            cell.catalogImageView.image = UIImage(named:"image002")
        }
        else if(indexPath.row % 3 == 0)
        {
            cell.catalogImageView.image = UIImage(named:"image003")
        }
        else if(indexPath.row % 5 == 0)
        {
            cell.catalogImageView.image = UIImage(named:"image004")
        }
        else if(indexPath.row % 7 == 0)
        {
            cell.catalogImageView.image = UIImage(named:"image005")
        }



        
        
        
        
        return cell
        
        
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath)
    {
        let cell = self.collectionView.cellForItemAtIndexPath(indexPath) as! CatalogCollectionViewCell
        
        cell.select()
        
        self.catalogCollectionViewCell = cell
        
        self.collectionView.deselectItemAtIndexPath(indexPath, animated: true)
        
    }
    
    
    func collectionView(collectionView: UICollectionView, didDeselectItemAtIndexPath indexPath: NSIndexPath)
    {
        let cell = self.collectionView.cellForItemAtIndexPath(indexPath) as! CatalogCollectionViewCell
        
        cell.deselect()
    }
    
    
    func deselectCollectionCell()
    {
        self.catalogCollectionViewCell?.deselect()
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

