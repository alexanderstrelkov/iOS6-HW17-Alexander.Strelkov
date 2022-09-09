//
//  CustomRadioGrid.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 03.09.2022.
//

import SwiftUI

struct RadioGridView: View {
    var gridModel: RadioGridModel
    
    var body: some View {
        VStack {
            VStack {
                Text("Избранная радиостанция")
                    .frame(width: 370, alignment: .leading)
                    .foregroundColor(.secondary)
                Text(gridModel.title)
                    .frame(width: 370, alignment: .leading)
                    .font(.title2)
                    .foregroundColor(.black)
                Text("Станция Apple Music")
                    .frame(width: 370, alignment: .leading)
                    .foregroundColor(.secondary)
            }
            
            Image(gridModel.icon)
                .resizable()
                .scaledToFit()
                .frame(width: 375)
        }
    }
}

struct RadioGridView_Previews: PreviewProvider {
    static var previews: some View {
        RadioGridView(gridModel: RadioGridModel.cells[0])
    }
}
