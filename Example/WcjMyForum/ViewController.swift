//
//  ViewController.swift
//  WcjMyForum
//
//  Created by Walter Calderon Jimenez on 06/21/2021.
//  Copyright (c) 2021 Walter Calderon Jimenez. All rights reserved.
//

import UIKit
import WcjMyForum

class ViewController: UIViewController {
    let session = URLSession.shared

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
         let client = MyForumClient(session: session)
        
        // get example
        
//        client.getPosts(complete: { result in
//            switch result {
//            case .success(let postList):
//                print(postList.count)
//
//            case .failure(let error):
//                print(error)
//            }
//        })
        
        // post example
        
//        let newPost = MyPost(id: nil, userId: 1, title: "Title", body: "Body")
//
//        client.addPost(newPost: newPost, complete: { result in
//            switch result {
//            case .success(let post):
//                print("added")
//                print(post)
//
//            case .failure(let error):
//                print(error)
//            }
//        })
        
        // put example
        
//        let updatedPost = MyPost(id: 1, userId: 1, title: "Title", body: "Body")
//
//        client.updatePost(updatedPost: updatedPost, id: 1, complete: { result in
//            switch result {
//            case .success(let post):
//                print("updated")
//                print(post)
//
//            case .failure(let error):
//                print(error)
//            }
//        })
        
        // delete example
        
        client.deletePost(id: 1, complete: { result in
            switch result {
            case .success(_):
                print("deleted")

            case .failure(let error):
                print(error)
            }
        })
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

