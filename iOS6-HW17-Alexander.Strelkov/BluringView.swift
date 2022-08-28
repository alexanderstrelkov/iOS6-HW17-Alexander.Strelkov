//
//  BluringView.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 28.08.2022.
//

import SwiftUI

struct BluringView: UIViewRepresentable {
    func makeUIView(context: Context) ->  UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemChromeMaterial))
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
