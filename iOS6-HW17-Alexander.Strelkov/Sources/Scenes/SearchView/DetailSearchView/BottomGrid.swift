//
//  BottomGrid.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 20.09.2022.
//

import SwiftUI

struct BottomGrid: View {
    
    let rows: [GridItem] = [GridItem(.flexible())]
    @State var bottom = Search().bottom
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                Text("Плейлисты")
                    .bold()
                    .font(.title2)
                    .padding(.leading, 5)
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows, spacing: 10) {
                        ForEach(bottom, id: \.self) { model in
                            DetailBottomView(gridModel: model)
                                .frame(width: 170)
                                .padding(.leading, 7)
                        }
                    }
                }
            }
        }
    }
}


struct BottomGrid_Previews: PreviewProvider {
    static var previews: some View {
        BottomGrid()
    }
}
