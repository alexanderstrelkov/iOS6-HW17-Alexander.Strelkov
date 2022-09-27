//
//  PlaylistsGrid.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 19.09.2022.
//

import SwiftUI

struct PlaylistsGrid: View {
    
    let rows: [GridItem] = [GridItem(.flexible())]
    @State private var playlistGridModels = DetailSearchModel.cells
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading, spacing: 1) {
                Text("Music")
                    .bold()
                    .font(.title)
                    .padding(5)
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows) {
                        ForEach(playlistGridModels, id: \.self) { model in
                            DetailSearchView(gridModel: model)
                                .frame(width: 390)
                                .padding(1)
                        }
                    }
                }
            }
        }
    }
}

struct PlaylistsGrid_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistsGrid()
    }
}
