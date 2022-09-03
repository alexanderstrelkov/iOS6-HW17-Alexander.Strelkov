//
//  RadioGrids.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 03.09.2022.
//

import SwiftUI

struct RadioGrids: View {
    
    let rows: [GridItem] = [GridItem(.flexible())]
    @State private var radioGridModels = RadioGridModel.cells
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(radioGridModels, id: \.self) { model in
                    RadioGridView(gridModel: model)
                        .frame(width: 390)
                }
            }
        }
    }
}

struct RadioGrids_Previews: PreviewProvider {
    static var previews: some View {
        RadioGrids()
    }
}
