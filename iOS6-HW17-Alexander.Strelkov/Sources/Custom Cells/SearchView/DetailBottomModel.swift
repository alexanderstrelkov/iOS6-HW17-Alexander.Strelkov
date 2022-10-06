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

    static var cells: [DetailBottomModel] = [DetailBottomModel(icon: "detailFirst"),
                                             DetailBottomModel(icon: "detailSecond"),
                                             DetailBottomModel(icon: "detailThird"),
                                             DetailBottomModel(icon: "detailFourth"),
                                             DetailBottomModel(icon: "detailFifth")]
}

