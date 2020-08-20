//
//  ListAndNavigation.swift
//  SwiftUIEx
//
//  Created by 조윤영 on 2020/08/20.
//  Copyright © 2020 조윤영. All rights reserved.
//

import SwiftUI

struct ListAndNavigation: View {
    let cats =  Cats.all() //더미로 만든 데이터를 모두 가져옵니다.
    var body: some View {
        NavigationView  {
            List(self.cats, id: \.name) { cat in
                NavigationLink(destination: CatDetail(cats: cat)) {
                    CatCell(cat: cat)
                }
            }.navigationBarTitle("고양이의 다양한 종")
        }
    }
}

struct CatCell: View {
    let cat: Cats
    
    var body: some View {
        HStack {
            Image(cat.imageURL)
            .resizable()
            .frame(width: 100, height: 100)
            .cornerRadius(16)
            
            VStack(alignment: .leading) {
                Text(cat.name).font(.largeTitle)
                Text("\(cat.number)")
            }
        }
        
    }
}

struct ListAndNavigation_Previews: PreviewProvider {
    static var previews: some View {
        ListAndNavigation()
    }
}
