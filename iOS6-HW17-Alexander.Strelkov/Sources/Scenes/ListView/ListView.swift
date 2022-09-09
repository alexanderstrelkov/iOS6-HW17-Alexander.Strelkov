//
//  ListView.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 29.08.2022.
//

import SwiftUI

struct ListView: View {
    @State private var cellModels = CellModel.cells
    @State private var editMode = EditMode.active
    @State private var selection = Set<String>()
    
    var body: some View {
        List(selection: $selection) {
            Section() {
                ForEach(cellModels, id: \.self) { model in
                    CellView(cellModel: model)
                }.onMove { IndexSet, Int in
                    cellModels.move(fromOffsets: IndexSet, toOffset: Int)
                }
            }
        }
        .navigationTitle("Медиатека")
        .accentColor(.red)
        .environment(\.editMode, $editMode)
        .listStyle(.plain)
        
        .navigationBarItems(
            trailing: NavigationLink(
                destination:
                    LibraryView(),
                label: {
                    Text("Готово")
                        .foregroundColor(.red)
                }))
        .navigationBarBackButtonHidden(true)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

