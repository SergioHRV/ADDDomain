//
//  SaveDeletedArticleIdUseCase.swift
//  ADDDomain
//
//  Created by Sergio Ramirez on 4/08/24.
//

import Foundation

public protocol SaveDeletedArticleIdUseCase {
    func addDeletedArticleId(_ articleId: String) async throws
}

public final class DefaultSaveDeletedArticleIdUseCase : SaveDeletedArticleIdUseCase {
    
    private let repositry: LocalArticleRepository
    
    public init(repositry: LocalArticleRepository){
        self.repositry = repositry
    }
    
    public func addDeletedArticleId(_ articleId: String) async throws {
        try await repositry.addDeletedArticleId(articleId)
    }
}
