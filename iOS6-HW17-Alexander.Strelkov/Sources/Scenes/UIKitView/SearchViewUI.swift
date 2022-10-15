//
//  SearchViewUI.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 09.10.2022.
//

import SwiftUI

struct SearchViewUI: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> UIViewController {
        let navigationController = UINavigationController(rootViewController: SearchUIViewController())
        return navigationController
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) { }
}
