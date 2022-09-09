//
//  Tabbar.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 28.08.2022.
//

import SwiftUI

struct Tabbar: View {
    init() {
        UINavigationBar.setAnimationsEnabled(false)
    }
    var body: some View {
        ZStack {
            TabView {
                NavigationView {
                    LibraryView()
                }
                .tabItem {
                    Image(systemName: "rectangle.stack.fill")
                    Text("Медиатека")
                }
                RadioView()
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Радио")
                    }
                Text("В разбработке")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Инфо")
                    }
            }
            .accentColor(.red)
            Player()
                .offset(y: 290)
        }
    }
}

struct Tabbar_Previews: PreviewProvider {
    static var previews: some View {
        Tabbar()
    }
}


