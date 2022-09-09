//
//  RadioView.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 03.09.2022.
//

import SwiftUI

struct RadioView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Divider()
                RadioGrids()
                Divider()
                StationsGrids()
            }
            .navigationTitle("Радио")
        }
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
