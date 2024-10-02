//
//  ArticleRepository.swift
//  ADDDomain
//
//  Created by Sergio Ramirez on 3/08/24.
//

import Foundation

public protocol ArticleRepository {
    func getArticles() async throws -> [Article]
}
