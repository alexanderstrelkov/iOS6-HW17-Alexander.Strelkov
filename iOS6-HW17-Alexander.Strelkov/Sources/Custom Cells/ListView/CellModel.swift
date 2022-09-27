//
//  CellModel.swift
//  iOS6-HW17-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 31.08.2022.
//

import SwiftUI

struct CellModel: Identifiable, Hashable  {
    var id = UUID()
    let name: String
    let icon: String
    
    static var cells: [CellModel] = [CellModel(name: "Плейлисты",
                                               icon: "music.note.list"),
                                     CellModel(name: "Артисты",
                                               icon: "music.mic"),
                                     CellModel(name: "Альбомы",
                                               icon: "square.stack"),
                                     CellModel(name: "Песни",
                                               icon: "music.note"),
                                     CellModel(name: "Телешоу и фильмы",
                                               icon: "tv"),
                                     CellModel(name: "Видеоклипы",
                                               icon: "music.note.tv"),
                                     CellModel(name: "Жанры",
                                               icon: "guitars"),
                                     CellModel(name: "Сборники",
                                               icon: "person.2.crop.square.stack"),
                                     CellModel(name: "Авторы",
                                               icon: "music.quarternote.3"),
                                     CellModel(name: "Загружено",
                                               icon: "arrow.down.circle"),
                                     CellModel(name: "Домашняя коллекция",
                                               icon: "music.note.house")]
}

