//
//  RadioGridModel.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 03.09.2022.
//

import SwiftUI

class Music: ObservableObject {
    @Published var radio: [RadioGridModel] = RadioGridModel.cells
    @Published var stations: [StationGridModel] = StationGridModel.cells
}

struct RadioGridModel: Identifiable, Hashable  {
    var id = UUID()
    let title: String
    let icon: String
    
    static var cells: [RadioGridModel] = [RadioGridModel(title: "Хиты",
                                               icon: "radio1"),
                                          RadioGridModel(title: "Легкий поп",
                                               icon: "radio2"),
                                          RadioGridModel(title: "Хип-хоп",
                                               icon: "radio3"),
                                          RadioGridModel(title: "Поп музыка",
                                               icon: "radio4"),
                                          RadioGridModel(title: "Чилаут",
                                               icon: "radio5")]
}
