//
//  SearchGridModel.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 18.09.2022.
//

import SwiftUI

class Search: ObservableObject {
    @Published var search: [SearchGridModel] = SearchGridModel.cells
    @Published var detail: [DetailSearchModel] = DetailSearchModel.cells
    @Published var bottom: [DetailBottomModel] = DetailBottomModel.cells
}

struct SearchGridModel: Identifiable, Hashable  {
    var id = UUID()
    let title: String
    let icon: String
    
    static var cells: [SearchGridModel] = [SearchGridModel(title: "Микстейп",
                                                             icon: "search1"),
                                           SearchGridModel(title: "Хип-хоп и R&B",
                                                             icon: "search2"),
                                           SearchGridModel(title: "Музыка 2.0",
                                                             icon: "search3"),
                                           SearchGridModel(title: "Классика рока",
                                                             icon: "search4"),
                                           SearchGridModel(title: "Классика",
                                                             icon: "search5"),
                                           SearchGridModel(title: "Музыка для расслабления",
                                                             icon: "search6"),
                                           SearchGridModel(title: "80-e",
                                                             icon: "search7"),
                                           SearchGridModel(title: "2010-e",
                                                             icon: "search8"),
                                           SearchGridModel(title: "90-e",
                                                             icon: "search9"),
                                           SearchGridModel(title: "2000-e",
                                                             icon: "search10")]
}
