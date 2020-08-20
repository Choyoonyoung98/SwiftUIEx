//
//  ContentView.swift
//  SwiftUIEx
//
//  Created by 조윤영 on 2020/08/19.
//  Copyright © 2020 조윤영. All rights reserved.
//
//1. View는 최대 10개의 Child View를 가질 수 있고, 만약 10개를 초과하게 된다면 Group과 같은 태그를 이용하여 감싸주어야한다.
//2. Button은 String을 인자로 받고 버튼을 눌렀을 때의 콜백을 클로저 블록 안에 작성할 수 있습니다. 실행 후 이상이 없는지 한번 체크해주세요.

import SwiftUI

struct ContentView: View {
    @State var touchedCount = 0 //구조체 특징상 내부 메서드 안에서 자신의 변수를 변경할 수 없다.
    var body: some View {
        NavigationView {
            Form {
                Text("Hello World")
                Button("this is Button") {
                    self.touchedCount += 1
                }
            }.navigationBarTitle("this is title")
        }
        
//
//        List(0..<5) {  (_ ) in
//            Text("Show yoon Detail View Controller")
//        }
//        .listStyle(GroupedListStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/*
 Form {
     Group{
        Text("Hello World")
        Text("Hello World")
        Text("Hello World")
        Text("Hello World")
        Text("Hello World")
     }
     Group{
        Text("Hello World")
        Text("Hello World")
        Text("Hello World")
        Text("Hello World")
        Text("Hello World")
     }
 }
 */
