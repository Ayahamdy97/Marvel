//
//  CharacterDescriptionModel.swift
//  Marvel
//
//  Created by Aya on 9/22/20.
//  Copyright © 2020 Aya. All rights reserved.
//


import Foundation
import Alamofire

//Fetching imagedata  from api
class CharacterDescriptionModel:ICharacterDescModel {
    
    
       var CharacterDescObj : ICharacterDescPresenter!
       
       init(presenter : ICharacterDescPresenter) {
           CharacterDescObj = presenter
       }

    
    func fetchSeriesImages(myResourceURI: String) {
        Alamofire.request("\(myResourceURI)?ts=101&apikey=c0bc2e4c66cf92dfb3d5be0acecc794b&hash=b156f21ebb6beabae28f94c98abbe87d").responseJSON { (response) in
                   if let JSON = response.result.value{
               do{
                       
                   let imageResult = try JSONDecoder().decode(ImagesData.self, from: response.data!)
              
                //print(imageResult.data?.results![0].events)
                self.CharacterDescObj.onSuccess(result: (imageResult.data?.results)!)
                print(imageResult.data?.results![0].thumbnail?.path!)
                   print("images retrieved 🔥")
                          
                   }catch {
                     print(error)
                     //  self.homePresenterObj.onFail()
                       }
                   }
                 
                   
               }
    }
    
}


