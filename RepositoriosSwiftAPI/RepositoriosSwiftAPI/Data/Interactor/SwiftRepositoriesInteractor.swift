//
//  SwiftRepositoriesInteractor.swift
//  RepositoriosSwiftAPI
//
//  Created by Caio Araujo Mariano on 12/05/20.
//  Copyright © 2020 Caio Araujo Mariano. All rights reserved.
//

import PromiseKit

protocol SwiftRepositoriesInteractorProtocol: class {
    func getSwiftRepositories() -> Promise<SwiftRepositories>
}

class SwiftRepositoriesInteractor: SwiftRepositoriesInteractorProtocol {
    
    var repository: SwiftReposRepositoryProtocol
    
    init(repository: SwiftReposRepositoryProtocol = SwiftReposRepository()) {
        self.repository = repository
    }
    
    func getSwiftRepositories() -> Promise<SwiftRepositories> {
        return repository.getSwiftRepositories()
    }
}
