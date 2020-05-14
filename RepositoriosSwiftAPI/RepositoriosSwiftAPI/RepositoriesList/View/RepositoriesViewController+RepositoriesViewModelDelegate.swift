//
//  RepositoriesViewController+RepositoriesViewModelDelegate.swift
//  RepositoriosSwiftAPI
//
//  Created by Caio Araujo Mariano on 13/05/20.
//  Copyright © 2020 Caio Araujo Mariano. All rights reserved.
//

import UIKit

extension RepositoriesViewController: RepositoriesViewModelDelegate {
    
    func reloadTableView() {
        loadIndicator?.isHidden = true
        repositoriesTableView?.reloadData()
    }
    
    func showError(title: String, message: String) {
       let topController = UIApplication.shared.keyWindow?.rootViewController
        topController?.showAlert(withTitle: title, message: message)
    }
}
