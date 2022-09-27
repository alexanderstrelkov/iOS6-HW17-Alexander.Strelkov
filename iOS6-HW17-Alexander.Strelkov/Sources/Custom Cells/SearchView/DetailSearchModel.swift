//
//  DetailSearchGridModel.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 19.09.2022.
//

import SwiftUI

struct DetailSearchModel: Identifiable, Hashable  {
    var id = UUID()
    let title: String
    let icon: String
    let subtitle: String
    
    static var cells: [DetailSearchModel] = [DetailSearchModel(title: "Ностальгия по 2000-м",
                                               icon: "detail1", subtitle: "Apple Music Поп"),
                                             DetailSearchModel(title: "Родные песни",
                                               icon: "detail2", subtitle: "Apple Music Хиты на русском"),
                                             DetailSearchModel(title: "Песни для детей",
                                               icon: "detail3", subtitle: "Apple Music для детей"),
                                             DetailSearchModel(title: "Золотой запас",
                                               icon: "detail4", subtitle: "Apple Music Поп"),
                                             DetailSearchModel(title: "Поп на русском: главное",
                                               icon: "detail5", subtitle: "Apple Music Поп на русском")]
}
