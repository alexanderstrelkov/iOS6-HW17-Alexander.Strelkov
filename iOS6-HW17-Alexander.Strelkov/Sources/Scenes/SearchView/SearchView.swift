//
//  SearchView.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 17.09.2022.
//

import SwiftUI

struct SearchView: View {
    
    
    @State private var stationCells = StationGridModel.cells
    @State var searchText = ""
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                SearchBar()
                    .navigationTitle("Поиск")
//                SearchGrids()
            }
            
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
