//
//  postCell.swift
//  learn
//
//  Created by hungyam on 2021/5/11.
//

import SwiftUI

struct postCell: View {
    let post: Post
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            HStack{
                loadImage(post.avatar)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(
                        postVipBadge(isVip: post.vip)
                            .offset(x: 16, y: 16)
                    )
                    
                VStack(alignment:.leading, spacing:5){
                    Text(post.name)
                        .font(.system(size: 16))
                        .foregroundColor(.orange)
                    Text(post.date)
                        .font(.system(size: 11))
                        .foregroundColor(.gray)
                }
                .padding(.leading,10)
                Spacer()
                if !post.isFollowed{
                    Button(action: {
                        print("hello");
                    }){
                        Text("关注")
                            .font(.system(size: 14))
                            .frame(width: 50, height: 26, alignment: .center)
                            .foregroundColor(.orange)
                            .overlay(
                                RoundedRectangle(cornerRadius: 13)
                                    .stroke(Color.orange, lineWidth: 1)
                            )
                    }
                    .buttonStyle(BorderlessButtonStyle())
                }
            }
            Text(post.text)
                .font(.system(size: 17))
            if !post.images.isEmpty {
                postImageCell(images: post.images, width: UIScreen.main.bounds.width - 30)
            }
            Divider()
            HStack{
                Spacer()
                postCellToolbarButton(image: "message", text: post.commentCountText, color: .black) {
                    print("comment")
                }
                .buttonStyle(BorderlessButtonStyle())
                Spacer()
                postCellToolbarButton(image: "heart", text: post.likeCountText, color: .black) {
                    print("like")
                }
                .buttonStyle(BorderlessButtonStyle())
                Spacer()
            }
            Rectangle()
                .frame(height: 15)
                .foregroundColor(Color( red: 238/256, green: 238/256, blue: 238/256, opacity: 0.5))
                .padding(.horizontal, -15)
        }
        .padding([.top, .leading, .trailing], 12.0)
    }
}

struct postCell_Previews: PreviewProvider {
    static var previews: some View {
        postCell(post: postList.list[2])
    }
}
