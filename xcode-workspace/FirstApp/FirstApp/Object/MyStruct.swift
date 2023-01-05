//
//  MyStruct.swift
//  FirstApp
//
//  Created by yimkeul on 2023/01/04.
//

import SwiftUI

//struct UserInfo {
//
//}

struct MyStruct: View {
    var body: some View {
        VStack{
            Text("Yimkeul")
            Text("25")
            Button {
                sayMyName()
            } label: {
                Text("Button")
                
            }

        }
        
    }
    func sayMyName() {
        print("Yimkeul")
    }
}

struct MyStruct_Previews: PreviewProvider {
    static var previews: some View {
        MyStruct()
    }
}
