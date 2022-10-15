//
//  UIKitView.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 06.10.2022.
//

import SwiftUI

struct UIKitView: View {
    
    @State private var isShowingSearchView = false
    
    var body: some View {
        
        VStack {
            Text("Uikit")
            Button {
                isShowingSearchView.toggle()
            } label: {
                Text("Show SearchView")
                    .bold()
            }
            .padding()
            .background(.blue)
            .foregroundColor(.white)
            .cornerRadius(30)
            .sheet(isPresented: $isShowingSearchView) {
                SearchViewUI()
            }
        }
    }
}

struct UIKitView_Previews: PreviewProvider {
    static var previews: some View {
        UIKitView()
    }
}


