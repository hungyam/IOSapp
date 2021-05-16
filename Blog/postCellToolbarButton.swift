//
//  postCellToolbarButton.swift
//  Blog
//
//  Created by hungyam on 2021/5/12.
//

import SwiftUI

struct postCellToolbarButton: View {
    let image: String
    let text: String
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack(spacing: 5) {
                Image(systemName: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 18, height: 18)
                Text(text)
                    .font(.system(size: 15))
            }
            .foregroundColor(color)
        }
    }
}

//struct postCellToolbarButton_Previews: PreviewProvider {
//    static var previews: some View {
//        postCellToolbarButton(image: "heart", text: "点赞", color: .orange) {
//            print("action")
//        }
//    }
//}
