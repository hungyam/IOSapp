//
//  postDetailView.swift
//  Blog
//
//  Created by hungyam on 2021/5/16.
//

import SwiftUI

struct postDetailView: View {
    let post: Post
    var body: some View {
        List {
            postCell(post: post)
                .listRowInsets(EdgeInsets())
            ForEach( 1...10, id: \.self) { comment in
                Text(String(comment))
            }
        }.navigationBarTitle("Detail", displayMode: .inline)
    }
}

struct postDetailView_Previews: PreviewProvider {
    static var previews: some View {
        postDetailView(post: postList.list[0])
    }
}
