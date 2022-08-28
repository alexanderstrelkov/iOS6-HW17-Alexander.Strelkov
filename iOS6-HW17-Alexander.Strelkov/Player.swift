//
//  Player.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 28.08.2022.
//

import SwiftUI

struct Player: View {
    var body: some View {
        VStack {
            HStack(spacing: 15) {
                Image("EnjoyPic")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 55, height: 55)
                    .cornerRadius(15)
                Text("Enjoy the silence")
                Spacer(minLength: 0)
                Button(action: {}, label: {
                    Image(systemName: "play.fill")
                        .font(.title2)
                        .foregroundColor(.primary)
                })
                Button(action: {}, label: {
                    Image(systemName: "forward.fill")
                        .font(.title2)
                        .foregroundColor(.primary)
                })
            }
            .padding(.horizontal)
        }
        .frame(height: 80)
        .background(
            VStack(spacing: 0) {
                BluringView()
                Divider()
            })
        .offset(y: -48)
    }
}

