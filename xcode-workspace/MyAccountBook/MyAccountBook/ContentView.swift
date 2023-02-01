//
//  ContentView.swift
//  MyAccountBook
//
//  Created by yimkeul on 2023/01/26.
//

import SwiftUI



func numberFormat(price:String)->String {
    let numberFormatter = NumberFormatter()
    numberFormatter.numberStyle = .decimal
    if let intValue = Int(price) {
        let num = NSNumber(value:intValue)
        if let result = numberFormatter.string(from: num) {
            return result
        }
    }

    return price
}

struct MainScrollView : View{
    
    @StateObject var dataManager : AccountDataManager = AccountDataManager.shared
    
    @State var acCategory : AccountCategory = .none
    
    
    var body : some View{
        ScrollView(){
            VStack{
                ForEach(Array(dataManager.getList(Category: acCategory).enumerated()), id: \.offset) {idx, data in
                    AccountRow(accountData: data)
                }
            }
            .padding()
            .padding()
            .frame(maxWidth: .infinity)
        }
        .frame(width: .infinity)
        .background(.white)
        .cornerRadius(20)
        .padding()
        CategorySelectionArea(selectedCategory: $acCategory)
    }
}

struct AccountRow : View{
    
    var accountData : AccountData
    
    var buttonArea : some View{
        Button{}label: {
            Text("+")
        }
    }
    
    var body : some View{
        HStack{
            Text(accountData.category.DisplayImoji)
                .font(.system(size: 45))
                .cornerRadius(0.3)
            
            VStack(alignment: .leading) {
                //타이틀, 금액
                Text(accountData.title)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text(numberFormat(price: accountData.account) + "원")
                    .font(.title3)
            }
            
            
            
            Spacer()
            // Button 자리
            buttonArea
            
        }
    }
    
}

struct TopArea : View{
    @State private var isShowModal = false
    
    var body: some View{
        HStack{
            Button{
                isShowModal = true
            }label: {
                Text("💸💸💸")
                    .font(.system(size : 33.3))
                    .frame(maxWidth: .infinity)
            }
            .padding()
            .sheet(isPresented: $isShowModal) {
                InputAccountModal(isPreseted: $isShowModal)
            }
            .background(.white)
            .cornerRadius(20)
            .padding()
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
                MainScrollView()
            }.padding()
        }
        
    }
}

struct InputAccountModal : View{
    
    var dataManager : AccountDataManager = AccountDataManager.shared
    

    // 기초
    @Binding var isPreseted : Bool
    
    //심화
    @Environment(\.dismiss) private var dismiss
    
    @State private var money :String = ""
    @State private var memo :String = ""
    
    @State private var selectedCategory:AccountCategory = .none
    
    func addAccountData() -> Bool {
        let acData = AccountData(category: selectedCategory, title: memo, account: money)
        let result = dataManager.add(AccountData: acData)
        return !result
    }
    
    var TopButton : some View{
        HStack{
            Button{
                //                기초
                //                isPreseted = false
                //                심화
                dismiss()
            } label: {
                Text("돌아가기")
            }
            Spacer()
        }.padding()
    }
    
    var InputArea : some View{
        VStack{
            HStack{
                Text("얼마나 쓰셨나요?")
                    .font(.title)
                Spacer()
                Button{
                    let result = addAccountData()
                    isPreseted = result
                } label: {
                    Image(systemName: "arrow.up")
                        .imageScale(.large)
                        .frame(width: 40, height: 40)
                        .foregroundColor(.white)
                        .background(.gray)
                        .clipShape(Circle())
                }
                
            }
            
            TextField("금액 입력", text : $money)
                .keyboardType(.decimalPad)
                .font(.title)
            Text("")
            
            TextField("메모 입력", text : $memo)
                .font(.title)
            Text("")
            
            Picker("지출 종류를 골라주세요", selection: $selectedCategory) {
                ForEach(AccountCategory.allCases, id :\.self) {
                    category in Text(category.DisplayImoji).tag(category)
                }
            }.pickerStyle(SegmentedPickerStyle())
            Text("")
            HStack{
                Text("오늘은~")
                Spacer()
            }
            Text(selectedCategory.Display)
                .font(.title)
            Spacer()
        }.padding()
    }
    
    var body: some View{
        VStack{
            TopButton
            InputArea
            Spacer()
        }.padding()
    }
}

struct CategorySelectionArea: View {

    @Binding var selectedCategory:AccountCategory

    var body: some View {
        VStack {
            Picker("지출 종류를 골라주세요", selection: $selectedCategory) {
                ForEach(AccountCategory.allCases, id:\.self) { category in
                    Text(category.DisplayImoji).tag(category)
                }

            } .onChange(of: selectedCategory, perform: { newValue in

            })
            .pickerStyle(SegmentedPickerStyle())
            .padding()
        }

        .background(.white)
        .cornerRadius(20)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

