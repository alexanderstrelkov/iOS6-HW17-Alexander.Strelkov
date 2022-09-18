//
//  SearchBar.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 18.09.2022.
//

import SwiftUI

struct SearchBar: View {
    @State var search = ""
    
    var body: some View {
        VStack(spacing: 10) {
            HStack(spacing: 15) {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.primary)
                
                TextField("Ваша медиатека", text: $search)
            }
            .padding(.vertical, 10)
            .padding(.horizontal)
            .background(Color.primary.opacity(0.06))
            .cornerRadius(15)
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
