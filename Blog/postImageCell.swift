//
//  postImageCell.swift
//  Blog
//
//  Created by hungyam on 2021/5/16.
//

import SwiftUI

struct postImageCell: View {
    let images: [String]
    let width: CGFloat;
    
    var body: some View {
        switch images.count {
        case 2:
            postImageRow(images: images, width: width)
        case 3:
            postImageRow(images: images, width: width)
        case 4:
            VStack(spacing: 8) {
                postImageRow(images: Array(images[0...1]), width: width)
                postImageRow(images: Array(images[2...3]), width: width)
            }
        case 5:
            VStack(spacing: 8) {
                postImageRow(images: Array(images[0...1]), width: width)
                postImageRow(images: Array(images[2...4]), width: width)
            }
        case 6:
            VStack(spacing: 8) {
                postImageRow(images: Array(images[0...2]), width: width)
                postImageRow(images: Array(images[3...5]), width: width)
            }
        default:
            loadImage(images[0])
                .resizable()
                .scaledToFill()
                .frame(width: width, height: width*0.75)
                .clipped()
        }
     }
}

struct postImageRow: View {
    let images: [String]
    let width: CGFloat
    
    var body: some View {
        let imageWidth: CGFloat = (self.width - 5 * CGFloat(self.images.count - 1))/CGFloat(self.images.count)
        HStack {
            ForEach(images, id: \.self) { image in
                loadImage(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageWidth, height: imageWidth)
                    .clipped()
            }
        }
    }
}

struct postImageCell_Previews: PreviewProvider {
    static var previews: some View {
        postImageCell(images: Array(postList.list[0].images), width: UIScreen.main.bounds.width)
    }
}
