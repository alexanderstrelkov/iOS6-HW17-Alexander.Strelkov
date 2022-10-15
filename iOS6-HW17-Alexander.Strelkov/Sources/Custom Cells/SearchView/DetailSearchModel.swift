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
                                               icon: "detailFirst", subtitle: "Apple Music Поп"),
                                             DetailSearchModel(title: "Родные песни",
                                               icon: "detailSecond", subtitle: "Apple Music Хиты на русском"),
                                             DetailSearchModel(title: "Песни для детей",
                                               icon: "detailThird", subtitle: "Apple Music для детей"),
                                             DetailSearchModel(title: "Золотой запас",
                                               icon: "detailFourth", subtitle: "Apple Music Поп"),
                                             DetailSearchModel(title: "Поп на русском: главное",
                                               icon: "detailFifth", subtitle: "Apple Music Поп на русском")]
}
