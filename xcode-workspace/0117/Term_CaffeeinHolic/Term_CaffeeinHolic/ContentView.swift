//
//  ContentView.swift
//  Term_CaffeeinHolic
//
//  Created by yimkeul on 2023/01/17.
//

import SwiftUI

struct ContentView: View {
    
    @State private var dailyList = ["First", "Second"]
    @State var result : Bool = true
    
    var caffeine:CaffeineModel = CaffeineModel()


    
    func incList(){
        dailyList.insert("New", at : 0)
    }
    func incCoffee(){
//        dailyList.insert("Get Some Coffee", at : 0)
//        caffeine.doWakening()
        (result, dailyList) = caffeine.doWakening()
    }
    
    func incStress(){

        (result, dailyList) = caffeine.getStressed()
    }
    func incRest(){

        (result, dailyList) = caffeine.doRest()
    }
    
    func resetState() {
        (result, dailyList) = caffeine.doReset()
    }
    
    var DailyView : some View{
        HStack(alignment: .top){
            VStack(alignment: .leading, spacing: 20){
                
                List(dailyList, id : \.self) {
                    item in Text(item)
                }
                Spacer()
                Text("")
            }
            .frame(width: 200)
            .opacity(0.3)
            Spacer()
        }.padding()
    }
    var Buttons: some View {
        VStack{
            HStack(spacing : 20){
                Text("")
                Spacer()
                Button("Top Button"){
                    print("Top Button Click")
                    (result , dailyList)  = caffeine.doReset()
                }
            }
            Spacer()
            Image(caffeine.getStateImg()).resizable().frame(
                width: caffeine.imgFrame.width,
                height: caffeine.imgFrame.height
                
            )
//            Button("Get Stress"){
//                print("Click")
//                incStress()
//            }.padding()
//
//            Button("Rest"){
//                print("Click")
//                incRest()
//            }.padding()
//
//            Button("Go to Caffeine"){
//                print("Click")
//                incCoffee()
//            }.padding()
            
            Spacer()
//            Text("Bottom")
            HStack{
                Button("Get Stress"){
                    print("Click")
                    incStress()
                }.padding()
                
                Button("Rest"){
                    print("Click")
                    incRest()
                }.padding()
                
                Button("Go to Caffeine"){
                    print("Click")
                    incCoffee()
                }.padding()
            }
            
        }.padding()
    }
    
    var body : some View{
        ZStack{
            DailyView
            Buttons
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
