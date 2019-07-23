//
//  BookListWorker.swift
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

class BookListWorker
{
    func fetchBookList(_ type:String, query: String,deleteBook:Bool?, callback:@escaping ([BookDetailsEntity])->()) {
        BookDetailsDBRepo().fetchBookList(type, query: query, deletedBook: deleteBook ?? false) { (res) in
            callback(res)
        }
    }
    
}
