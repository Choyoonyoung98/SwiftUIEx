//
//  StackView.swift
//  SwiftUIEx
//
//  Created by 조윤영 on 2020/08/20.
//  Copyright © 2020 조윤영. All rights reserved.
//
//3. 스택 다루기
//수평으로 View를 쌓는 VStack과 수평으로 View를 쌓는 HStack
//뷰를 겹쳐서 표현할 때 사용하는 ZStack
import SwiftUI

struct StackView: View {
    var body: some View {
        //1. HStack
//        HStack {
//            Text("hello world!")
//            Text("hello world2!")
//            Text("hello world3!")
//            Text("hello world!4")
//        }.background(Color.red)
//
        
        //2. VStack
//        VStack(alignment: .leading, spacing: 20) {
//            Text("맨 위")
//            Spacer() //Spacer를 선언하면 별도의 옵션을 주지않는 이상 가능한 모든 영역을 차지하게 되고 부모 뷰인 VStack 역시 Spacer로 인해 가능한 모든 영역만큼 크기가 늘어납니다.
//            Text("중앙")
//            Spacer().frame(height: 10)
//            Spacer()//Spacer 개수에 비례하여 다른 가중치를 받게됩니다.
//            Text("하단")
//        }.background(Color.red)
        
        //3. ZStack
//        ZStack {
//            Color.yellow.edgesIgnoringSafeArea(.all)
//            RadialGradient(gradient: Gradient(colors:[.white, .black]), center: .center, startRadius: 310, endRadius: 100)
//            AngularGradient(gradient: Gradient(colors: [.red, .yellow, .blue]), center: .center)
//            Color.red.frame(width: 300, height: 300)
//            Color(red: 0.1, green: 0.2, blue: 0.3).frame(width: 100, height: 2000)
//            Color.blue.frame(width: 200, height: 200)
//        }
        ZStack {
            AngularGradient(gradient: Gradient(colors: [.red, .orange, .yellow, .green, .blue, .purple]), center: .center).edgesIgnoringSafeArea(.all)
            
            HStack {
                VStack {
                    Text("11시")
                    Spacer()
                    Text("9시")
                    Spacer()
                    Text("7시")
                }
                Spacer()
                VStack {
                    Text("12시")
                    Spacer()
                    Text("중앙")
                    Spacer()
                    Text("6시")
                }
                Spacer()
                VStack {
                    Text("10시")
                    Spacer()
                    Text("3시")
                    Spacer()
                    Text("5시")
                }
            }
        }
    }
}

struct StackView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}
