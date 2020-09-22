//
//  HomePresenter.swift
//  Marvel
//
//  Created by Aya on 9/21/20.
//  Copyright © 2020 Aya. All rights reserved.
//

import Foundation
class HomePresenter : IHomePresenter, ICheckConnection{
   
    
   
    var myOffset : Int?
    var homeViewObj : IHomeView?
    var homeModelObj : IHomeModel?
    var localHomeObj : ILocalHomeModel?
    var charDataList = [CharacterData]()
    var charObj : CharacterData?
    init(view : IHomeView) {
        homeViewObj = view
    }
    
    func getDataFromHomeModel(offset: Int) {
        var check = InternetConnection.checkInternetConnection(iCheckConnection: self)
        myOffset = offset
        
    }
    func onSuccess(characterObjList: [Character], characterOffset: Int) {
        homeViewObj?.showDataInHomeView(characterObjList: characterObjList , characterOffset: characterOffset)
        
        /*
        if localHomeObj!.fetchCharFromRealm().count == 0 {
            localHomeObj!.saveCharacteInRealm(chararcterObjList : charDataList)
                          
        }else{
            
        }*/
    }
    
    func onFail() {
        
    }
    
    func onSucessfullyConnected() {
        homeModelObj = HomeModel(presenter: self)
        homeModelObj?.getCharacters(offset: myOffset!)
       
        
    }
    
    func onFailConnected() {
        localHomeObj = LocalHomeModel(presenter: self)
               
        
        
       
    }
    
}
/*
  
 */
