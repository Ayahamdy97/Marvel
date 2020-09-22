//
//  CharacterDescription.swift
//  Marvel
//
//  Created by Aya on 9/21/20.
//  Copyright © 2020 Aya. All rights reserved.
//

import Foundation
protocol ICharacterDescView{
    func showSeriesDataInHomeView(result : [ResultImage])
}


protocol ICharacterDescPresenter{
    func getImagedFromModel(myResourceURI : String)
    func onSuccess(result : [ResultImage])
    func onFail()
}


protocol ICharacterDescModel{
    func fetchSeriesImages(myResourceURI : String)
}
