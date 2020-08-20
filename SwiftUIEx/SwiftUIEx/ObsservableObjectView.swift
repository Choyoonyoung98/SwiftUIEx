//
//  ObsservableObjectView.swift
//  SwiftUIEx
//
//  Created by 조윤영 on 2020/08/20.
//  Copyright © 2020 조윤영. All rights reserved.
//

import SwiftUI


class CountRepo: ObservableObject {
//    @Published var count: Int = 0
    //Published 어노테이션은 값이 변동되었을 때 바로 View에게 즉각적으로 알려주는 Annotation입니다.
    var count: Int = 0 {
        willSet(newVal) {
            print(newVal % 5)
            if newVal % 5 == 0 {
                objectWillChange.send() //SwiftUI에 값이 변동됐음을 알려주는 메서드
            }
        }
    }
}

struct ObsservableObjectView: View {
    
    @ObservedObject var countRepo = CountRepo()
    var body: some View {
        VStack {
            Text("\(self.countRepo.count)").font(.largeTitle)
            Button("숫자 증가") {
                self.countRepo.count += 1
            }
        }
    }
}

struct ObsservableObjectView_Previews: PreviewProvider {
    static var previews: some View {
        ObsservableObjectView()
    }
}
