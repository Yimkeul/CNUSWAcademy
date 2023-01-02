//
//  ContentView.swift
//  FirstApp
//
//  Created by yimkeul on 1/2/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let name:String = "Yimkeul" + "1"
        
        VStack{
//            Text("my name is " + name)
            Text("my name is \(name)")
        }
            
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
 
