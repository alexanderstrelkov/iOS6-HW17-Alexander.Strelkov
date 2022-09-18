//
//  SearchGridModel.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 18.09.2022.
//

import SwiftUI

struct SearchGridModel: Identifiable, Hashable  {
    var id = UUID()
    let title: String
    let icon: String
    
    static var cells: [SearchGridModel] = [SearchGridModel(title: "Микстейп",
                                                             icon: "station1"),
                                           SearchGridModel(title: "Хип-хоп и R&B",
                                                             icon: "station2"),
                                           SearchGridModel(title: "Музыка 2.0",
                                                             icon: "station3"),
                                           SearchGridModel(title: "Классика рока",
                                                             icon: "station4"),
                                           SearchGridModel(title: "Классика",
                                                             icon: "station5"),
                                           SearchGridModel(title: "Музыка для расслабления",
                                                             icon: "station6")]
}
