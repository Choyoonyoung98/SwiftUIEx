//
//  Cats.swift
//  SwiftUIEx
//
//  Created by 조윤영 on 2020/08/20.
//  Copyright © 2020 조윤영. All rights reserved.
//

import Foundation
struct Cats {
    let name: String
    let imageURL: String
    let number: Int
}

extension Cats {
    static func all() -> [Cats] {
        return [
            Cats(name: "냥이1", imageURL: "cat1", number: 2000),
            Cats(name: "냥이2", imageURL: "cat2", number: 2100),
            Cats(name: "냥이3", imageURL: "cat3", number: 2200)
        ]
    }
}
