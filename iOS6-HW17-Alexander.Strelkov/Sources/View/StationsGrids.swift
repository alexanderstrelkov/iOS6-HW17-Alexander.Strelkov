//
//  StationsView.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 03.09.2022.
//

import SwiftUI

struct StationsGrids: View {
    var columns: [GridItem] = [GridItem(.flexible())]
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
                    ForEach(0..<5) { index in
                        Rectangle()
                            .frame(height: 200)
                            .foregroundColor(.blue)
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
