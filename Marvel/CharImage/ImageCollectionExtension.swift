//
//  ImageCollectionExtension.swift
//  Marvel
//
//  Created by Aya on 9/22/20.
//  Copyright © 2020 Aya. All rights reserved.
//

import UIKit
import Foundation
extension CharacterImageViewController :UICollectionViewDelegate,UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let  cell = collectionView.dequeueReusableCell(withReuseIdentifier: "charImageCell", for: indexPath)
               
        return cell
    }
   
    
}
