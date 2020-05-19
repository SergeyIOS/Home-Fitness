//
//  PreviewPage.swift
//  Home Fitness
//
//  Created by User on 22.04.2020.
//  Copyright © 2020 Sergey Tkachenko. All rights reserved.
//

import UIKit

private let reuseIdentifier = "FitnessImage"

class PreviewPage: UICollectionViewController {
    
    var selectItem : Int?
    let imageNameArray = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"]
    
    let lableNameArray = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetail" {
            if let indexPath = collectionView.indexPathsForSelectedItems?[0] {
                let detailsVC = segue.destination as! DetailVC
                detailsVC.opisanieTitle = imageNameArray[indexPath.row]
            }
        }
    }
    

    // MARK: UICollectionViewDataSource

//    override func numberOfSections(in collectionView: UICollectionView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return imageNameArray.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FitnessImage", for: indexPath) as! FitnessCollectionViewCell
        
        cell.fitnessImageView.image = UIImage(named: imageNameArray[indexPath.row])
        selectItem = indexPath.row
        cell.textLabel?.text = lableNameArray[indexPath.row]
        cell.fitnessImageView?.layer.cornerRadius = 15
        
        return cell
    }

    
    
    // MARK: UICollectionViewDelegate
    
    
    

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
