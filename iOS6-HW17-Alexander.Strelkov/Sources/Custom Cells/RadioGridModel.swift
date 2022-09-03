//
//  RadioGridModel.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 03.09.2022.
//

import SwiftUI

struct RadioGridModel: Identifiable, Hashable  {
    var id = UUID()
    let name: String
    let icon: String
    
    static var cells: [RadioGridModel] = [RadioGridModel(name: "Хиты",
                                               icon: "radio1"),
                                          RadioGridModel(name: "Легкий поп",
                                               icon: "radio2"),
                                          RadioGridModel(name: "Хип-хоп",
                                               icon: "radio3"),
                                          RadioGridModel(name: "Поп музыка",
                                               icon: "radio4"),
                                          RadioGridModel(name: "Чилаут",
                                               icon: "radio5")]
}
