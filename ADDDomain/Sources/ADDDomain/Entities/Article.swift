//
//  Article.swift
//  ADDDomain
//
//  Created by Sergio Ramirez on 3/08/24.
//

import Foundation

public struct Article {
    public let id: String
    public let title: String
    public let author: String
    public let createdAt: Date
    public let articleUrl: String
    
    public init(id: String, 
                title: String,
                author: String,
                createdAt: Date,
                articleUrl: String) {
        self.id = id
        self.title = title
        self.author = author
        self.createdAt = createdAt
        self.articleUrl = articleUrl
    }
}
