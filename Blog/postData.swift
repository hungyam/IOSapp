//
//  postData.swift
//  learning
//
//  Created by hungyam on 2021/5/12.
//

import SwiftUI

struct Posts: Codable {
    var list: [Post]
}

struct Post: Codable, Identifiable {
    let id: Int
    let avatar: String
    let vip: Bool
    let name: String
    let date: String
    var isFollowed: Bool
    let text: String
    let images: [String]
    var commentCount: Int
    var likeCount: Int
    var isLiked: Bool
}

extension Post {
    var commentCountText: String {
        if commentCount <= 0 { return "评论" }
        if commentCount <= 1000 { return String(commentCount) }
        return String(format: "%.1fK", Double(commentCount) / 1000)
    }
    var likeCountText: String {
        if commentCount <= 0 { return "点赞" }
        if commentCount <= 1000 { return String(likeCount) }
        return String(format: "%.1fK", Double(likeCount) / 1000)
    }
    
}

let postList = loadPostListData("PostListData_recommend_1.json")

func loadPostListData(_ filename: String) -> Posts {
    guard let url = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("url error!")
    }
    guard let data = try? Data(contentsOf: url) else {
        fatalError("data error!")
    }
    guard let list = try? JSONDecoder().decode(Posts.self, from: data) else {
        fatalError("list error!")
    }
    return list
}

func loadImage(_ name: String) -> Image {
    return Image(uiImage: UIImage(named: name)!)
}
