//
//  postListView.swift
//  Blog
//
//  Created by hungyam on 2021/5/12.
//

import SwiftUI

struct postListView: View {
    var body: some View {
        List {
            ForEach(postList.list) { post in
                postCell(post: post)
                    .listRowInsets(EdgeInsets())
            }
        }
    }
}

struct postListView_Previews: PreviewProvider {
    static var previews: some View {
        postListView()
    }
}
