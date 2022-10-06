//
//  DetailBottomModel.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 20.09.2022.
//

import SwiftUI

struct DetailBottomModel: Identifiable, Hashable  {
    var id = UUID()
    let icon: String

    static var cells: [DetailBottomModel] = [DetailBottomModel(icon: "detail1"),
                                             DetailBottomModel(icon: "detail2"),
                                             DetailBottomModel(icon: "detail3"),
                                             DetailBottomModel(icon: "detail4"),
                                             DetailBottomModel(icon: "detail5")]
}

