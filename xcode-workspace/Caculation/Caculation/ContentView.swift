//
//  ContentView.swift
//  Caculation
//
//  Created by yimkeul on 2023/01/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            VStack {
                Spacer()
                HStack{
                    Spacer()
                    Text("331,460")
                        .foregroundColor(.white)
                        .font(.system(size :73))
                        .padding()
                }
                HStack{
                    Text("C")
                        .frame(
                            width: 80,
                            height: 80
                        )
                        .background(.white)
                        .cornerRadius(40)
                        .foregroundColor(.black)
                        .font(.system(size:33))
                    Text("+")
                        .frame(
                            width: 80,
                            height: 80
                        )
                        .background(.white)
                        .cornerRadius(40)
                        .foregroundColor(.black)
                        .font(.system(size:33))
                    Text("%")
                        .frame(
                            width: 80,
                            height: 80
                        )
                        .background(.white)
                        .cornerRadius(40)
                        .foregroundColor(.black)
                        .font(.system(size:33))
                    Text("/")
                        .frame(
                            width: 80,
                            height: 80
                        )
                        .background(.orange)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size:33))
                    
                }
                HStack{
                    Button{
                        
                    }label : {
                        Text("7")
                            .frame(
                                width: 80,
                                height: 80
                            )
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size:33))
                    }
                    Button{
                        
                    }label:{
                    Text("8")
                        .frame(
                            width: 80,
                            height: 80
                        )
                        .background(.gray)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size:33))
                }
                    Button{
                        
                    }label : {
                        Text("9")
                            .frame(
                                width: 80,
                                height: 80
                            )
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size:33))
                    }
                    
                    Button {
                        
                    }label : {
                        Text("X")
                            .frame(
                                width: 80,
                                height: 80
                            )
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size:33))
                    }
                }
                HStack{
                    Button{
                        
                    }label:{
                        Text("4")
                            .frame(
                                width: 80,
                                height: 80
                            )
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size:33))
                    }
                    
                    Button {
                        
                    }label : {
                        Text("5")
                            .frame(
                                width: 80,
                                height: 80
                            )
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size:33))
                    }
                    
                    Button{
                        
                    }label : {
                        Text("6")
                            .frame(
                                width: 80,
                                height: 80
                            )
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size:33))
                    }
                    Button{
                        
                    }label:{
                        Text("-")
                            .frame(
                                width: 80,
                                height: 80
                            )
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size:33))
                    }
                }
                HStack{
                    Button{
                        
                    }
                    label : {
                        Text("1")
                            .frame(
                                width: 80,
                                height: 80
                            )
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size:33))
                    }
                    Button{
                        
                    }label : {
                        Text("2")
                            .frame(
                                width: 80,
                                height: 80
                            )
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size:33))
                    }
                    
                    Button{
                        
                    }label: {
                        Text("3")
                            .frame(
                                width: 80,
                                height: 80
                            )
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size:33))
                    }
                    Button{
                        
                    }label:{
                        Text("+")
                            .frame(
                                width: 80,
                                height: 80
                            )
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size:33))
                    }
                }
                HStack{
                    Text("0")
                        .frame(
                            width: 80,
                            height: 80
                        )
                        .background(.gray)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size:33))
                    Text("0")
                        .frame(
                            width: 80,
                            height: 80
                        )
                        .background(.gray)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size:33))
                    Button{
                        
                    }label:{
                        Text(".")
                            .frame(
                                width: 80,
                                height: 80
                            )
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size:33))
                    }
                    Button{
                        
                    }label:{
                        Text("=")
                            .frame(
                                width: 80,
                                height: 80
                            )
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size:33))
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
