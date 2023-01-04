//
//  SwitchEnum.swift
//  FirstApp
//
//
//  Created by yimkeul on 2023/01/04.

import SwiftUI

struct SwitchEnum: View {
    
    @State var menu :Menu = .beef
    
    enum Menu {
        case   beef, pork, chicken, duck
    }
    
    var body: some View {
        switch menu {
        case .beef:
            Text("안녕")
        case .pork:
            Text("안녕1")
        case .chicken:
            Text("안녕2")
        case .duck:
            Text("안녕3")
        }
    }
}

struct SwitchEnum_Previews: PreviewProvider {
    static var previews: some View {
        SwitchEnum()
    }
}
