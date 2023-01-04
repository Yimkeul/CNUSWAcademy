//
//  Closure.swift
//  FirstApp
//
//  Created by yimkeul on 2023/01/04.
//

import SwiftUI

struct Closure: View {
    let myFirstClosure : () -> Void = {
        print("hi")
    }
    
    func sayHi()->Void{
        print("HIHI")
    }
    
    var body: some View {
        VStack{
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Button(action: myFirstClosure) {
                Text("HITME")
            }
        }
            

//        Button {
//            myFirstClosure()
//        } label: {
//            Text("HITME")
//        }

    }
}

struct Closure_Previews: PreviewProvider {
    static var previews: some View {
        Closure()
    }
}
  
