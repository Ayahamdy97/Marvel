//
//  CharacterDataTableViewCell.swift
//  Marvel
//
//  Created by Aya on 9/21/20.
//  Copyright © 2020 Aya. All rights reserved.
//

import UIKit

class CharacterDataTableViewCell: UITableViewCell {
    @IBOutlet weak var genre: UILabel!
    var controllerRef: UIViewController?
    
    @IBOutlet weak var charImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        dataCollection.dataSource = self
        dataCollection.delegate = self
        
        
    }

    @IBOutlet weak var dataCollection: UICollectionView!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    
    }

}


extension CharacterDataTableViewCell : UICollectionViewDelegate,UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        
  let  cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120,height: 170)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("selected")
         let storyboard =  UIStoryboard(name: "CharImage", bundle: nil)
         let charImage = storyboard.instantiateViewController(identifier: "charImage") as! CharacterImageViewController
        //charImage.modalPresentationStyle = .
        controllerRef?.present(charImage, animated: true, completion: nil)
        
    }
    
}
