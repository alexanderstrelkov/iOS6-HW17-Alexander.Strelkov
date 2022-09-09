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
                                                             icon: "station1"),
                                            StationGridModel(title: "Хип-хоп и R&B",
                                                             subtitle: "Станция Apple Music",
                                                             icon: "station2"),
                                            StationGridModel(title: "Музыка 2.0",
                                                             subtitle: "Музыка XXI века.",
                                                             icon: "station3"),
                                            StationGridModel(title: "Классика рока",
                                                             subtitle: "Гении гитарного звука.",
                                                             icon: "station4"),
                                            StationGridModel(title: "Классика",
                                                             subtitle: "Выдающиеся образцы жанра",
                                                             icon: "station5"),
                                            StationGridModel(title: "Музыка для расслабления",
                                                             subtitle: "Электронная медитация.",
                                                             icon: "station6")]
}
