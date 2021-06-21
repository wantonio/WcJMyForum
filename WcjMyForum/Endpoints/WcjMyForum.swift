//
//  MyForumClient.swift
//  WcjMyForum
//
//  Created by Walter Calderon on 21/6/21.
//

import Foundation

public class MyForumClient: NetworkGeneric {
    let baseUrlStr = "https://jsonplaceholder.typicode.com/"
    var session: URLSession
    
    public init(session: URLSession) {
        self.session = session
    }
    
    public func getPosts(complete: @escaping (Result<[MyPost], ApiError>) -> Void) {
        let postUrl = URL(string: "\(baseUrlStr)posts")!
        let request = URLRequest(url: postUrl)
        self.fetch(type: [MyPost].self, with: request, completion: complete)
    }
    
    public func addPost(newPost: MyPost, complete: @escaping (Result<MyPost, ApiError>) -> Void) {
        let postUrl = URL(string: "\(baseUrlStr)posts")!
        var request = URLRequest(url: postUrl)
        request.httpMethod = "POST"
        request.setValue("application/json; charset=UTF-8", forHTTPHeaderField: "Content-type")
        
        let data = try! JSONEncoder().encode(newPost)
        
        request.httpBody = data
        
        self.fetch(type: MyPost.self, with: request, completion: complete)
    }
    
    public func updatePost(updatedPost: MyPost, id: Int, complete: @escaping (Result<MyPost, ApiError>) -> Void) {
        let postUrl = URL(string: "\(baseUrlStr)posts/\(id)")!
        var request = URLRequest(url: postUrl)
        request.httpMethod = "PUT"
        request.setValue("application/json; charset=UTF-8", forHTTPHeaderField: "Content-type")
        
        let data = try! JSONEncoder().encode(updatedPost)
        
        request.httpBody = data
        
        self.fetch(type: MyPost.self, with: request, completion: complete)
    }
    
    public func deletePost(id: Int, complete: @escaping (Result<MyPost, ApiError>) -> Void) {
        let postUrl = URL(string: "\(baseUrlStr)posts/\(id)")!
        var request = URLRequest(url: postUrl)
        request.httpMethod = "DELETE"
        self.fetch(type: MyPost.self, with: request, completion: complete)
    }
}
