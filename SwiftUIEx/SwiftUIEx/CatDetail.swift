//
//  CatDetail.swift
//  SwiftUIEx
//
//  Created by 조윤영 on 2020/08/20.
//  Copyright © 2020 조윤영. All rights reserved.
//

import SwiftUI
struct CatDetail: View {
    @State var isPresent: Bool = false  //State 어노테이션이 붙으면 뷰 안에서 값을 참조할 수 있는 랩핑클래스인 Binding<T>의 형태로 받습니다.
    let cats: Cats
    var body: some View {
        VStack {
            Image(cats.imageURL)
            .resizable()
            .aspectRatio(contentMode: .fit)
                .onTapGesture(count: 2) {
                    self.isPresent = true
            }
        }.alert(isPresented: $isPresent) { () -> Alert in
            Alert(title: Text("고양이 상세 설명"), message: Text("이 고양이는 매우 귀엽습니다!"), dismissButton: .default(Text("OK")))
        }
    }
}

struct CatDetail_Previews: PreviewProvider {
    static let previewMaker = Cats(name: "hello world", imageURL: "cat1", number: 1000)
    static var previews: some View {
        CatDetail(cats: previewMaker)
    }
}
