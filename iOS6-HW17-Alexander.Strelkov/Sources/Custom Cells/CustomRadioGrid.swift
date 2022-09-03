//
//  CustomRadioGrid.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 03.09.2022.
//

import SwiftUI

struct CustomRadioGrid: View {
    var gridModel: RadioGridModel
    
    var body: some View {
        VStack {
            VStack {
                Text("Избранная радиостанция")
                    .frame(width: 350, alignment: .leading)
                    .foregroundColor(.secondary)
                Text(gridModel.name)
                    .frame(width: 350, alignment: .leading)
                    .font(.title2)
                Text("Станция Apple Music")
                    .frame(width: 350, alignment: .leading)
                    .foregroundColor(.secondary)
            }
        
            Image(gridModel.icon)
                .resizable()
                .scaledToFit()
                .frame(width: 350)
        }
    }
}

struct CustomRadioGrid_Previews: PreviewProvider {
    static var previews: some View {
        CustomRadioGrid(gridModel: RadioGridModel.cells[0])
    }
}
