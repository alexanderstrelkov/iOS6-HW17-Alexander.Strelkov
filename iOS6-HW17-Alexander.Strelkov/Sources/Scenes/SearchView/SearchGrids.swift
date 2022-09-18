//
//  SearchGrids.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 18.09.2022.
//

import SwiftUI

struct SearchGrids: View {
    
    let columns: [GridItem] = [GridItem(.flexible())]
    @State private var searchGridCells = StationGridModel.cells
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: columns) {
                Section(header:
                            Text("Поиск по категориям")
                            .bold()
                            .font(.title3)
                            .frame(maxWidth: .infinity, alignment: .leading)
                ) {
                    ForEach(searchGridCells, id: \.self) { model in
                        StationGridView(gridModel: model)
                    }
                }
            }
        }
    }
}

struct SearchGrids_Previews: PreviewProvider {
    static var previews: some View {
        SearchGrids()
    }
}
