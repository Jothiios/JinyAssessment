//
//  HomeWorker.swift
//  jinyAssessment
//
//  Created by Jothi on 23/07/19.
//  Copyright (c) 2019 Widas. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

class HomeWorker
{
    // MARK: Get All Books List
    
    func getAllBooksListFromServer(callback: @escaping ([BookDetailsEntity]) -> ()) {
        
        BookListRepo().getAllBooks { (response, error) in
            DispatchQueue.main.async {
                if response.count > 0 {
                    callback(response)
                }else{
                    callback([])
                }
            }
        }
    }
}
