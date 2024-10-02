//
//  LocalArticleRepository.swift
//  ADDDomain
//
//  Created by Sergio Ramirez on 4/08/24.
//

import Foundation

public protocol LocalArticleRepository {
    func getArticles() async throws -> [Article]
    func saveArticles(_ articles: [Article]) async throws
    func addDeletedArticleId(_ articleId: String) async throws
    func getDeletedArticlesIds() async throws -> [String]
}
