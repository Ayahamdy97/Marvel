//
//  HomeExtension.swift
//  Marvel
//
//  Created by Aya on 9/20/20.
//  Copyright © 2020 Aya. All rights reserved.
//

import UIKit
import SDWebImage

extension HomeViewController : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if charList.count != 0 {
            return charList.count
        }else{
            return 0
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell = tableView.dequeueReusableCell(withIdentifier: "homeCell", for: indexPath) as! HomeTableviewCell
        
        
        let imageUrl = charList[indexPath.row].thumbnail?.path
        let size = "/portrait_incredible."
        var extenion = charList[indexPath.row].thumbnail?.thumbnailExtension
        
        
        cell.movieImage.sd_setImage(with: URL(string: imageUrl! + size + "jpg"), placeholderImage:UIImage(named: "placeholder.png"))
        cell.movieName.text = charList[indexPath.row].name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard =  UIStoryboard(name: "CharacterDescription", bundle: nil)
         let charDesc = storyboard.instantiateViewController(identifier: "charDesc") as! CharacterDescViewController
        charDesc.charObj = charList[indexPath.row]
        
         self.present(charDesc, animated: true, completion: nil)

    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if(indexPath.row == (charList.count-1)){
            if myOffset! < 111159 {
                myOffset!+=20
                homePresenterObj?.getDataFromHomeModel(offset: 20)
                print("another api call")
                print(myOffset!)
            }
            print("last cell")
        }
        
    }
    
   
    
}

