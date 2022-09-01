//
//  CellView.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 31.08.2022.
//

import SwiftUI

struct CellView: View {
    var cellModel: CellModel
    var body: some View {
        HStack {
            Image(systemName: cellModel.icon)
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 22)
                .foregroundColor(.red)
            
            Text(cellModel.name)
                .fontWeight(.medium)
            
            
        }
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView(cellModel: CellModel.cells[0])
    }
}
