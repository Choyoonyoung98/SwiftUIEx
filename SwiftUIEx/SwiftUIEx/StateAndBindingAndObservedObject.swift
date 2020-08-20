//
//  StateAndBindingAndObservedObject.swift
//  SwiftUIEx
//
//  Created by 조윤영 on 2020/08/20.
//  Copyright © 2020 조윤영. All rights reserved.
//
//5. @State, @Binding, @ObservedObject에 관하여

import SwiftUI

//프로퍼티 래퍼: 사용자가 별도의 코딩을 하지 않더라도 어노테이션만 선언해도 뷰에서 수정이나 읽기가 가능하도록 캡슐화를 대신 해주는 것
//만약 리스트뷰와 토글 뷰가 나뉘어 토글에 따라 리스트를 바꿔야 하는 경우처럼 두 개의 뷰가 동시에 하나의 State를 참조해야 하는 경우가 생길 수 있는데, 이 때 @Binding을 사용한다.

struct StateAndBindingAndObservedObject: View {
    @State var isToggleOn: Bool = true
    
    var body: some View {
        VStack {
            ChildView(isToggleOn: $isToggleOn)
            if isToggleOn {
                Text("나타났다 뿅!")
            }
        }
    }
}

struct ChildView: View {
    //Binding Annotation을. 쓰면 Binding<bool>로 인자로 받아 초기화시킬 수 있습니다.
    //단순히 @Binding 어노테이션으로 선언하여 초기화할 때 State값을 받는 것만으로 여러 개의 뷰가 동시에 State값을 참조할 수 있습니다.
    //하지만 State는 Toggle 유무와 같은 UI의 상태 값과 같은 아주 한정된 용도로만 사용하기를 권고하고 있는데 그 이유는 뷰 안에서만 사용하는 메모리 공간이기 때문입니다. 만약 뷰 밖의 클래스에서 사용한다면 ObservableObject를 사용할 수 있습니다.
    @Binding var isToggleOn: Bool
    
    var body: some View {
        Toggle(isOn: $isToggleOn) {
            Text("글자를 가립니다")
        }.padding()
    }
}

struct StateAndBindingAndObservedObject_Previews: PreviewProvider {
    static var previews: some View {
        StateAndBindingAndObservedObject()
    }
}
