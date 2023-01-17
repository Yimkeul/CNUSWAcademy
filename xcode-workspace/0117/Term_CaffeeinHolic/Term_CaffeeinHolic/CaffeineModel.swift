//
//  CaffeineModel.swift
//  Term_CaffeeinHolic
//
//  Created by yimkeul on 2023/01/17.
//

import Foundation

class CaffeineModel {
    
    // 초기 상태 저장
    var currentState : CaffineState = CaffineState.punch
    var imgFrame : CGSize = CGSize(width: 200, height: 200)
    
//    let originList = ["First", "Second"]
    var dailyList:[String] = []
    
    func incImgSize() {
        var newFrame:CGSize = imgFrame
        newFrame.height += 10
        newFrame.width += 10
        if newFrame.width < 300{
            imgFrame = newFrame
        }
    }
    
    enum CaffineState : String{
        case punch
        case good
        case work
        case sleep
    }
    
    
    
    func getStateImg () -> String {
        return "profile." + currentState.rawValue
    }
    
    func doWakening () -> (Bool , [String]){
        //        self.currentState = CaffineState.good
        return  changeState(newState: .good)
    }
    
    func getStressed () -> (Bool , [String]){
        //        self.currentState = CaffineState.work
        return  changeState(newState: .work)
    }
    
    func doRest () -> (Bool , [String]){
        //        self.currentState = CaffineState.sleep
        return  changeState(newState: .sleep)
    }
    
    func doReset () -> (Bool, [String]) {
//        changeState(newState: false)
        dailyList.removeAll()
       return changeState(newState: .punch)
    
    }
    
  
    func resetImgSize() {
        imgFrame = CGSize(width: 200, height: 200)
    }
    
    
    private func changeState(newState : CaffineState) -> (Bool, [String])
    {
        var result : Bool = false
        
        addDailyList(State: newState)
        
        if newState != self.currentState {
            result = true
            self.currentState = newState
            resetImgSize()
        }
        else{
            incImgSize()
        }
        
        return (result, dailyList)
    }
    
    
    
    
    private func addDailyList(State : CaffineState){
        switch (State){
        case .work : dailyList.insert("Stress Up", at: 0)
        case .good : dailyList.insert("Get Some Coffee", at: 0)
        case .punch : dailyList.insert("New", at: 0)
        case .sleep : dailyList.insert("Rest", at: 0)
        }
    }
    
}
