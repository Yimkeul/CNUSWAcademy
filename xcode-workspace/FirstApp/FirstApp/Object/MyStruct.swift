//
//  MyStruct.swift
//  FirstApp
//
//  Created by yimkeul on 2023/01/04.
//

import SwiftUI

struct UserInfo {
    let name:String
    let age :Int?
    let email :String?
    let job : String?
    let hasPet : Bool
    func sayMyName(with name : String) {
        print(name)
    }
}

struct MyStruct: View {
    let userinfo : UserInfo
    var body: some View {
        VStack{
            Text(userinfo.name)
            Text(userinfo.age?.description ?? "100")
            Text(userinfo.email?.description ?? "test@test.com")
            Text(userinfo.job?.description ?? "no")
            Text(userinfo.hasPet.description)
            
            Button {
                userinfo.sayMyName(with : userinfo.name)
            } label: {
                Text("Button")
                
            }

        }
        
    }
}

struct MyStruct_Previews: PreviewProvider {
    static var previews: some View {
        let Sejun = UserInfo(name: "세준", age: 25, email: "leesjun29@gmail.com", job: "Student", hasPet: false)
        MyStruct(userinfo:Sejun )
    }
}
