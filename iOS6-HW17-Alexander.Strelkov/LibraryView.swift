//
//  LibraryView.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 28.08.2022.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        NavigationView {
            Tabbar()
                .navigationTitle("Медиатека")
                .navigationBarItems(
                    trailing:
                        Text("Править")
                        .foregroundColor(Color.red))
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}

