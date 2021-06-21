//
//  Post.swift
//  WcjMyForum
//
//  Created by Walter Calderon on 21/6/21.
//

import Foundation

public struct MyPost: Codable {
    public var id: Int?
    public var userId: Int?
    public var title: String?
    public var body: String?
    
    public init(id: Int?, userId: Int?, title: String?, body: String?) {
        self.id = id
        self.userId = userId
        self.title = title
        self.body = body
    }
}
