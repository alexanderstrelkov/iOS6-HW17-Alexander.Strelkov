//
//  StationGridModel.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 03.09.2022.
//

import SwiftUI

struct StationGridModel: Identifiable, Hashable  {
    var id = UUID()
    let title: String
    let subtitle: String
    let icon: String
    
    static var cells: [StationGridModel] = [StationGridModel(title: "Микстейп",
                                                             subtitle: "То, что слушают прямо сейчас",
                                                             icon: "stationFirst"),
                                            StationGridModel(title: "Хип-хоп и R&B",
                                                             subtitle: "Станция Apple Music",
                                                             icon: "stationSecond"),
                                            StationGridModel(title: "Музыка 2.0",
                                                             subtitle: "Музыка XXI века.",
                                                             icon: "stationThird"),
                                            StationGridModel(title: "Классика рока",
                                                             subtitle: "Гении гитарного звука.",
                                                             icon: "stationFourth"),
                                            StationGridModel(title: "Классика",
                                                             subtitle: "Выдающиеся образцы жанра",
                                                             icon: "stationFifth"),
                                            StationGridModel(title: "Музыка для расслабления",
                                                             subtitle: "Электронная медитация.",
                                                             icon: "stationSixth")]
}
