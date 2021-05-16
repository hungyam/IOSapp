//
//  postListView.swift
//  Blog
//
//  Created by hungyam on 2021/5/12.
//

import SwiftUI

struct postListView: View {
    init() {
        UITableViewCell.appearance().selectionStyle = .none
        UITableView.appearance().separatorStyle = .none
    }
    
    
    var body: some View {
        List {
            ForEach(postList.list) { post in
                ZStack{
                    postCell(post: post)
                    NavigationLink(destination: postDetailView(post: post)){
                        EmptyView()
                    }
                    .hidden()
                }
                .listRowInsets(EdgeInsets())
            }
        }
    }
}

struct postListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            postListView()
                .navigationBarTitle("hello")
                .navigationBarHidden(true)
        }
    }
}
