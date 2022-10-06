//
//  DetailBottomView.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 20.09.2022.
//

import SwiftUI

struct DetailBottomView: View {
    var gridModel: DetailBottomModel
    
    var body: some View {
        Image(gridModel.icon)
            .resizable()
            .scaledToFill()
            .frame(width: 170, height: 170)
            .cornerRadius(5)
    }
}

struct DetailBottomView_Previews: PreviewProvider {
    static var previews: some View {
        DetailBottomView(gridModel: DetailBottomModel.cells[0])
    }
}
