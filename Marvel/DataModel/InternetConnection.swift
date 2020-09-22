//
//  InternetConnection.swift
//  Marvel
//
//  Created by Aya on 9/21/20.
//  Copyright © 2020 Aya. All rights reserved.
//

import Foundation
import Network
// checking internet connection using network
class InternetConnection {
    
    
    class func checkInternetConnection(iCheckConnection:ICheckConnection){
  
    let monitor = NWPathMonitor()
    let queue = DispatchQueue(label: "InternetConnectionMonitor")
                      

           
           monitor.pathUpdateHandler = { pathUpdateHandler in
                      if pathUpdateHandler.status == .satisfied {
                          print("Internet connection is on.")
                        
                    
                        
                        
                        DispatchQueue.main.async {
                        
                            iCheckConnection.onSucessfullyConnected()
                        
                                               }
                        
                        
                      }
                      else{
               
                      DispatchQueue.main.async {
                            print("no internet connection")
                        iCheckConnection.onFailConnected()
                                            
                                                                   }
                         
               }
           
       
       }
            monitor.start(queue: queue)
    


       }
       

    
}


