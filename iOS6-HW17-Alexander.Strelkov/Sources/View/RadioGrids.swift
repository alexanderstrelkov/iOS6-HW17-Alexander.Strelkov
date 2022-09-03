//
//  RadioGrids.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 03.09.2022.
//

import SwiftUI

struct RadioGrids: View {
    let rows = [GridItem(.fixed(15))]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(0..<5) { index in
                    Rectangle()
                        .frame(width: 350, height: 200)
                        .foregroundColor(.blue)
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
