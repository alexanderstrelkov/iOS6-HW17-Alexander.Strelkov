//
//  DetailView.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 20.09.2022.
//

import SwiftUI

struct DetailView: View {
    
    var body: some View {
        ScrollView {
            PlaylistsGrid()
            Divider()
            BottomGrid()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
