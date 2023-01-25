//
//  ContentView.swift
//  Caculation
//
//  Created by yimkeul on 2023/01/13.
//

import SwiftUI

enum ButtonType : String  {
    case first, second, third, forth, fifth, sixth, seventh, eighth, nineth, zero
    case comma, equal , plus, minus, multiple, devide
    case percent, opposite, clear
    var ButtonDisplayName : String {
        switch self{
        case .first :
            return "1"
        case .second :
            return "2"
        case .third :
            return "3"
        case .forth :
            return "4"
        case .fifth :
            return "5"
        case .sixth :
            return "6"
        case .seventh :
            return "7"
        case .eighth :
            return "8"
        case .nineth :
            return "9"
        case .zero :
            return "0"
        case .comma :
            return "."
        case .equal :
            return "="
        case .plus :
            return "+"
        case .minus :
            return "-"
        case .multiple :
            return "X"
        case .devide :
            return "$"
        case .percent :
            return "%"
        case .opposite :
            return "/"
        case .clear:
            return "C"
            
        }
    }
    
    var backgroundColor : Color {
        switch self{
        case .equal , .plus, .minus, .multiple , .devide:
            return Color.orange
        case .percent , .opposite ,.clear:
            return Color.gray
        default :
            return Color("NumberBtn")
        }
    }
    
    var foregroundColor : Color {
        switch self{
        case .percent , .opposite ,.clear:
            return Color.black
        default :
            return Color.white
        }
        
    }
    
}
struct ContentView: View {
    @State private var totalNumber : String = "0"
    
    private let buttonData : [[ButtonType]] =
    [
        [.clear, .opposite, .percent, .devide],
        [.seventh, .eighth, .nineth, .multiple],
        [.forth, .fifth, .sixth, .minus],
        [.first, .second, .third, .plus],
        [.zero, .comma, .equal]
    ]
    
    
    
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            VStack {
                Spacer()
                HStack{
                    Spacer()
                    Text(totalNumber)
                        .foregroundColor(.white)
                        .font(.system(size :73))
                        .padding()
                }
                ForEach(buttonData, id:\.self){ line in
                    HStack{
                        ForEach(line, id:\.self) { item in
                            Button{
                                // 입력을 안받았을때
                                if totalNumber == "0"{
                                    if item == .clear {
                                        totalNumber = "0"
                                    }else if item == .plus ||
                                                item == .minus ||
                                                item == .multiple ||
                                                item == .devide{
                                        totalNumber = "Error"
                                    }
                                    else{
                                        totalNumber = item.ButtonDisplayName
                                    }
                                }
                                // 입력을 받았을때
                                else{
                                    if item == .clear {
                                        totalNumber = "0"
                                    }
                                    else{
                                        totalNumber += item.ButtonDisplayName
                                    }
                                }
                            }label : {
                                Text(item.ButtonDisplayName)
                                    .frame(
                                        width: item == .some(.zero) ? 160 : 80,
                                        height: 80
                                    )
                                    .background(item.backgroundColor)
                                    .cornerRadius(40)
                                    .foregroundColor(item.foregroundColor)
                                    .font(.system(size:33))
                            }
                        }
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

