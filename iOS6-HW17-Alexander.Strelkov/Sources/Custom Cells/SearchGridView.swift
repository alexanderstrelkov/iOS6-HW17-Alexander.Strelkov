//
//  SearchGridView.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 18.09.2022.
//

import SwiftUI

struct SearchGridView: View {
    var gridModel: SearchGridModel
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(gridModel.icon)
                .resizable()
                .scaledToFill()
                .frame(width: 185, height: 150)
                .cornerRadius(15)
            Text(gridModel.title)
                .padding(10)
                .font(.subheadline.bold())
                .foregroundColor(.white)
        }
    }
}

struct SearchGridView_Previews: PreviewProvider {
    static var previews: some View {
        SearchGridView(gridModel: SearchGridModel.cells[0])
    }
}
