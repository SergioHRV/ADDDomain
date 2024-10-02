//
//  SaveLocalArticlesUseCase.swift
//  ADDDomain
//
//  Created by Sergio Ramirez on 4/08/24.
//

import Foundation

public protocol SaveLocalArticlesUseCase {
    func saveArticles(_ articles: [Article]) async throws
}

public final class DefaultSaveLocalArticlesUseCase : SaveLocalArticlesUseCase {
    
    private let repositry: LocalArticleRepository
    
    public init(repositry: LocalArticleRepository){
        self.repositry = repositry
    }
    
    public func saveArticles(_ articles: [Article]) async throws {
        try await repositry.saveArticles(articles)
    }
}
