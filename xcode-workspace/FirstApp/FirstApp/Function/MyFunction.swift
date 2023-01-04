//
//  MyFunction.swift
//  FirstApp
//
//  Created by yimkeul on 1/4/23.
//

import SwiftUI

struct MyFunction: View {
    
    @State var myMind :String = "nothing"
    @State var isChangedMind: Bool = false
    var body: some View {
        VStack{
            Text(myMind)
            Button{
                isChangedMind.toggle()
                myMind = getMind(with: isChangedMind)
            }label: {
                Text("Changed my Mind")
            }
        }
    }
    func getMind (with isChangedMind:Bool) -> String{
        if isChangedMind {
            return "always open"
        }else{
            return "but closed"
        }
    }
}

struct MyFunction_Previews: PreviewProvider {
    static var previews: some View {
        MyFunction()
    }
}
