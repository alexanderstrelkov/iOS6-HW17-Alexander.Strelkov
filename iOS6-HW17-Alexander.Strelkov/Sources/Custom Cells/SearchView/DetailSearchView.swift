//
//  DetailSearchView.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 19.09.2022.
//

import SwiftUI

struct DetailSearchView: View {
    var gridModel: DetailSearchModel
    
    var body: some View {
        VStack {
            VStack {
                Text("Избранный плейлист")
                    .frame(width: 370, alignment: .leading)
                    .foregroundColor(.secondary)
                Text(gridModel.title)
                    .frame(width: 370, alignment: .leading)
                    .font(.title2)
                    .foregroundColor(.black)
                Text(gridModel.subtitle)
                    .frame(width: 370, alignment: .leading)
                    .foregroundColor(.secondary)
            }
            
            Image(gridModel.icon)
                .resizable()
                .scaledToFit()
                .frame(width: 375)
                .cornerRadius(15)
        }
    }
}

struct DetailSearchView_Previews: PreviewProvider {
    static var previews: some View {
        DetailSearchView(gridModel: DetailSearchModel.cells[0])
    }
}
