//
//  CharacterDescriptionPresenter.swift
//  Marvel
//
//  Created by Aya on 9/22/20.
//  Copyright © 2020 Aya. All rights reserved.
//

import Foundation
class CharacterDescPresenter:ICharacterDescPresenter, ICheckConnection {
    
    
    var charDescModelObj : ICharacterDescModel?
    var charDescViewObj : ICharacterDescView?
    init(view : ICharacterDescView) {
        charDescViewObj = view
    }
    
    
    func getImagedFromModel(myResourceURI: String) {
      //   var check = InternetConnection.checkInternetConnection(iCheckConnection: self)
        charDescModelObj = CharacterDescriptionModel(presenter: self)
               charDescModelObj?.fetchSeriesImages(myResourceURI: myResourceURI)
        
    }
    
    func onSuccess(result: [ResultImage]) {
        charDescViewObj?.showSeriesDataInHomeView(result: result)
    }
    
    func onFail() {
        
    }
    
    func onSucessfullyConnected() {
        
     }
     
     func onFailConnected() {
         
     }
}
