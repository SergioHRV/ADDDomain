//
//  GetLocalArticlesUseCase.swift
//  ADDDomain
//
//  Created by Sergio Ramirez on 4/08/24.
//

import Foundation

public protocol GetLocalArticlesUseCase {
    func getLocalArticles() async throws -> [Article]
}

public final class DefaultGetLocalArticlesUseCase : GetLocalArticlesUseCase {
        
    private let repositry: LocalArticleRepository
    
    public init(repositry: LocalArticleRepository){
        self.repositry = repositry
    }
    
    public func getLocalArticles() async throws -> [Article] {
        async let deletedIdsRequest = try repositry.getDeletedArticlesIds()
        async let articlesRequest = try repositry.getArticles()
        let (articles, deletedIds) = try await (articlesRequest, deletedIdsRequest)
        return ArticleFilter.filter(articles: articles, contains: deletedIds)
    }
}
