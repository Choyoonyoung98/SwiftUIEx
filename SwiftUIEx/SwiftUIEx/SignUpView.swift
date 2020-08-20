//
//  SignUpView.swift
//  SwiftUIEx
//
//  Created by 조윤영 on 2020/08/20.
//  Copyright © 2020 조윤영. All rights reserved.
//
//Tutorial2 - 양방향 바인딩

import SwiftUI

struct SignUpView: View {
    let genderType = ["남성", "여성", "기타"]
    @State var  name = ""
    @State var bornIn = 0
    @State var gender = 0
    
    var resultScript: String {
        if(name.isEmpty) {
            return "이름을 입력해주세요."
        } else {
            return "\(name)님은 성별이 \(genderType[gender])이며 나이는 \(120 - bornIn)입니다"
        }
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("이름"))  {
                    TextField("이름을 입력해주세요", text: $name)
                        .keyboardType(.default)
                }
                
                Section(header: Text("생년월일")) {
                    Picker("출생년도", selection: $bornIn) {
                        ForEach(1900 ..< 2019) {
                            Text("\(String($0))년생")
                        }
                    }
                }
                
                Section(header: Text("성별")) {
                    Picker("성별", selection: $gender ){
                        ForEach(0 ..< genderType.count) {
                            Text("\(self.genderType[$0])")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                
                Section(header: Text("결과")) {
                    Text("\(resultScript)")
                }
            }.navigationBarTitle("회원가입")
            
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
