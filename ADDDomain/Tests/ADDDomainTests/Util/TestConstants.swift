//
//  TestConstants.swift
//  ADDemoTests
//
//  Created by Sergio Ramirez on 5/08/24.
//

import Foundation
@testable import ADDDomain

struct TestConstants {
    
    static let articles: [Article] = [
        Article(id: "ADDEMO04",
                title: "ADDEMO as a testing prject",
                author: "SRamirez",
                createdAt: Date(),
                articleUrl: ""),
        Article(id: "ADDEMO05",
                title: "ADDEMO as a testing prject",
                author: "SRamirez",
                createdAt: Date(),
                articleUrl: ""),
        Article(id: "ADDEMO06",
                title: "ADDEMO as a testing prject",
                author: "SRamirez",
                createdAt: Date(),
                articleUrl: "")
        
    ]
    
    static let deletedIds: [String] = [
        "ADDEMO04",
        "ADDEMO05"
    ]
}
