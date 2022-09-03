//
//  StationsView.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 03.09.2022.
//

import SwiftUI

struct StationsGrids: View {
    
    let columns: [GridItem] = [GridItem(.flexible())]
    @State private var stationGridModels = StationGridModel.cells
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: columns) {
                Section(header:
                            Text("Станции")
                            .bold()
                            .font(.title2)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                ) {
                    ForEach(stationGridModels, id: \.self) { model in
                        StationGridView(gridModel: model)
                        Divider()
                    }
                }
            }
        }
    }
}

struct StationsGrids_Previews: PreviewProvider {
    static var previews: some View {
        StationsGrids()
    }
}
