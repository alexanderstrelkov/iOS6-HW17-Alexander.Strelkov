//
//  SearchGrids.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 18.09.2022.
//

import SwiftUI

struct SearchGrids: View {
    
    let columns = Array(repeating: GridItem(.flexible()), count: 2)
    @State private var searchGridCells = SearchGridModel.cells
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: columns, spacing: 10) {
                Section(header:
                            Text("Поиск по категориям")
                            .bold()
                            .font(.title3)
                            .frame(maxWidth: .infinity, alignment: .leading)
                ) {
                    ForEach(searchGridCells, id: \.self) { model in
                        SearchGridView(gridModel: model)
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
