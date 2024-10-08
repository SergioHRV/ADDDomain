//
//  GetArticlesUseCase.swift
//  ADDDomain
//
//  Created by Sergio Ramirez on 3/08/24.
//

import Foundation

public protocol GetArticlesUseCase {
    func getArticles() async throws -> [Article]
}

public final class DefaultGetArticlesUseCase : GetArticlesUseCase {
        
    private let repository: ArticleRepository
    private let localRepository: LocalArticleRepository
    
    public init(repository: ArticleRepository, localRepository: LocalArticleRepository){
        self.repository = repository
        self.localRepository = localRepository
    }
    
    public func getArticles() async throws -> [Article] {
        async let deletedIdsRequest = try localRepository.getDeletedArticlesIds()
        async let articlesRequest = try repository.getArticles()
        let (articles, deletedIds) = try await (articlesRequest, deletedIdsRequest)
        return ArticleFilter.filter(articles: articles, contains: deletedIds)
    }
}
