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
                                                             icon: "searchFirst"),
                                           SearchGridModel(title: "Хип-хоп и R&B",
                                                             icon: "searchSecond"),
                                           SearchGridModel(title: "Музыка 2.0",
                                                             icon: "searchThird"),
                                           SearchGridModel(title: "Классика рока",
                                                             icon: "searchFourth"),
                                           SearchGridModel(title: "Классика",
                                                             icon: "searchFifth"),
                                           SearchGridModel(title: "Музыка для расслабления",
                                                             icon: "searchSixth"),
                                           SearchGridModel(title: "80-e",
                                                             icon: "searchSeventh"),
                                           SearchGridModel(title: "2010-e",
                                                             icon: "searchEighth"),
                                           SearchGridModel(title: "90-e",
                                                             icon: "searchNineth"),
                                           SearchGridModel(title: "2000-e",
                                                             icon: "searchTenth")]
}
