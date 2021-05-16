//
//  postVipBadge.swift
//  learning
//
//  Created by hungyam on 2021/5/12.
//

import SwiftUI

struct postVipBadge: View {
    let isVip: Bool
    var body: some View {
        if isVip {
            Group{
                Text("V")
                    .bold()
                    .font(.system(size: 11))
                    .frame(width: 15, height: 15)
                    .foregroundColor(.yellow)
                    .background(Color.orange)
                    .clipShape(Circle())
                    .overlay(
                        RoundedRectangle(cornerRadius: 7.5)
                            .stroke(Color.gray,lineWidth: 1)
                    )
            }
        }
    }
}

struct postVipBadge_Previews: PreviewProvider {
    static var previews: some View {
        postVipBadge(isVip: true)
    }
}
