////
////  LibraryView.swift
////  iOS6-HW17-Alexander.Strelkov
////
////  Created by Alexandr Strelkov on 28.08.2022.
////

import SwiftUI

struct LibraryView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 5) {
                Text("Ищете свою музыку?")
                    .font(.title2)
                    .bold()
                Text("Здесь появится купленная Вами в iTunes Store музыка.")
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .frame(width: 310.0)
            }
            .navigationTitle("Медиатека")
            .navigationBarItems(trailing: NavigationLink(destination: ListView(), label: {
                Text("Править")
                    .foregroundColor(.red)
            }))
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}



