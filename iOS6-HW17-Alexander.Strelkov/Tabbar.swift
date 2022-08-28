//
//  Tabbar.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 28.08.2022.
//

import SwiftUI

struct Tabbar: View {
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            TabView {
                mainViewText()
                    .tabItem {
                        Image(systemName: "rectangle.stack.fill")
                        Text("Медиатека")
                    }
                Text("В разбработке")
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
        })
    }
}

struct Tabbar_Previews: PreviewProvider {
    static var previews: some View {
        Tabbar()
    }
}

struct mainViewText: View {
    var body: some View {
        VStack {
            Text("Ищете свою музыку?")
                .font(.title2)
                .bold()
            Text("Здесь появится купленная Вами в iTunes Store музыка.")
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .frame(width: 310.0)
        }
    }
}
