//
//  HomePresenter.swift
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

protocol HomePresentationLogic
{
    func presentBookListSuccess(response:[BookDetailsEntity])
    func presentBookListfailure()
}

class HomePresenter: HomePresentationLogic
{
    
    weak var viewController: HomeDisplayLogic?
    
    // MARK: Do something
    
    func presentBookListSuccess(response:[BookDetailsEntity]){
        viewController?.showBooksListSuccess(viewModel: Home.BookLists.Response(bookList:response))
    }
    func presentBookListfailure() {
        viewController?.showBookListFailure()
    }
    
}
