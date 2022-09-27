//
//  StationGridView.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 03.09.2022.
//

import SwiftUI

struct StationGridView: View {
    var gridModel: StationGridModel
    
    var body: some View {
        HStack {
            Image(gridModel.icon)
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .cornerRadius(15)
            VStack {
                Text(gridModel.title)
                    .frame(width: 250, alignment: .leading)
                    .font(.title2)
                    .foregroundColor(.black)
                Text(gridModel.subtitle)
                    .frame(width: 250, alignment: .leading)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct StationGridView_Previews: PreviewProvider {
    static var previews: some View {
        StationGridView(gridModel: StationGridModel.cells[0])
    }
}
