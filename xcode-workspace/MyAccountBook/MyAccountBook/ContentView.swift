//
//  ContentView.swift
//  MyAccountBook
//
//  Created by yimkeul on 2023/01/26.
//

import SwiftUI

struct MainScrollView : View{
    var body : some View{
        ScrollView(){
            ForEach(1..<100) {_ in
                //                num in
                //                Text("item \(num)").font(.title)
                // 같은기능임
                //                Text("Item \($0)").font(.title)
                AccountRow()
            }.frame(maxWidth: .infinity)
                .background(.white)
        }
    }
}

struct AccountRow : View{
    
    var buttonArea : some View{
        Button{}label: {
            Text("+")
        }
    }
    
    var body : some View{
        HStack{
            // 로고자리
            Text("💸")
                .frame(width: 40, height: 40)
                .background(.secondary)
            Spacer()
            // 타이틀
            VStack{
                Text("타이틀")
                Text("금액")
            }.background(.gray)
            Spacer()
            // Button 자리
            buttonArea
            
        }
    }
}


struct TopArea : View{
    var body: some View{
        HStack{
            Button{
                
            }label: {
                Text("Top Button")
            }
        }.padding()
    }
}

struct BottomArea : View{
    var body: some View{
        HStack{
            Button{
                
            }label: {
                Text("button")
            }
        }
    }
}


struct ContentView: View {
    var body: some View {
        ZStack
        {
            Color.gray.ignoresSafeArea().opacity(0.2)
            VStack {
                TopArea()
                Spacer()
                MainScrollView()
                Spacer()
                BottomArea()
            }.padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
