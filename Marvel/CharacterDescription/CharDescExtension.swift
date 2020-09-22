//
//  CharDescExtension.swift
//  Marvel
//
//  Created by Aya on 9/21/20.
//  Copyright © 2020 Aya. All rights reserved.
//

import Foundation
import UIKit

extension CharacterDescViewController : UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        11
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
 
        let index: Int = indexPath.row
        switch index {
        case  0:
            print("image")
            let imageCell = tableView.dequeueReusableCell(withIdentifier: "imageCell", for: indexPath) as! ImageTableViewCell
            
            imageCell.charImage.sd_setImage(with: URL(string: imageUrl! + size + "jpg"), placeholderImage:UIImage(named: "placeholder.png"))
            return imageCell
        case 1:
            return initializeNameCell(title: "Name", value: charObj?.name ?? "No name", indexPath: indexPath, tableView: tableView)
            
        case 2 :
            return initializeNameCell(title: "Description", value: charObj?.resultDescription ?? "No description", indexPath: indexPath, tableView: tableView)
        case 3:
            //
              return initializeDataCell(value: "Comics", indexPath: indexPath, tableView: tableView)
            
        case 4 :
               return initializeDataCell(value: "Series", indexPath: indexPath, tableView: tableView)
       case 5 :
        //
              return initializeDataCell(value: "Stories", indexPath: indexPath, tableView: tableView)
           
        case 6 :
            //
             return initializeDataCell(value: "Events", indexPath: indexPath, tableView: tableView)
          
       case 7 :
        let linksCell = tableView.dequeueReusableCell(withIdentifier: "linksCell", for: indexPath) as! LinksTableViewCell
            return linksCell
      case 8 :
           return initializeMoreCell(infoName : "Details" , indexPath : indexPath , tableView : tableView)
        case 9 :
            return initializeMoreCell(infoName : "Wiki" , indexPath : indexPath , tableView : tableView)
        default:
            return initializeMoreCell(infoName : "Comic Link" , indexPath : indexPath , tableView : tableView)
        }
        
        
        
   
    }
    
    func initializeDataCell(value : String , indexPath : IndexPath , tableView : UITableView) -> UITableViewCell{
        let dataCell = tableView.dequeueReusableCell(withIdentifier: "dataCell", for: indexPath) as! CharacterDataTableViewCell
        dataCell.genre.text = value
        dataCell.controllerRef = self
       return dataCell
    }
    
    func initializeMoreCell(infoName : String , indexPath : IndexPath , tableView : UITableView) -> UITableViewCell{
        let moreCell = tableView.dequeueReusableCell(withIdentifier: "moreCell", for: indexPath) as! MoreTableViewCell
          moreCell.infoName.text = infoName
            return moreCell
     }
    
    func initializeNameCell(title : String,value : String  , indexPath : IndexPath , tableView : UITableView) -> UITableViewCell{
        let nameCell = tableView.dequeueReusableCell(withIdentifier: "infoCell", for: indexPath) as! InfoTableViewCell
             nameCell.title.text = title
             nameCell.value.text = value
        
                return nameCell
        }    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        var height : CGFloat = CGFloat()
        
        
        
        
     /*   let index: Int = indexPath.row
               switch index {
               case  3:
                  print()
               default :
                print()
        }*/
        
        
        
        
       if(indexPath.row < 3){
            //height = 65
            height = UITableView.automaticDimension
        }else
            if(indexPath.row == 3){
            height = 250
            
        }else if(indexPath.row == 4){
            height = 250
            
        }else if(indexPath.row == 5){
            height = 250
            
        }else if(indexPath.row == 6){
            height = 250
            
        }else if(indexPath.row == 8){
        height = 55
        
        }else if(indexPath.row == 9){
            height = 55
            
        }else if(indexPath.row == 7){
            height = 55
            
        }else if(indexPath.row == 8){
            height = 55
            
        }else if(indexPath.row == 9){
            height = 55
            
        }else{
            height = 55
            
        }
    return height
    }
    
    
}
