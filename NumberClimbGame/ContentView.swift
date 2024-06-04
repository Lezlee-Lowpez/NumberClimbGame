//
//  ContentView.swift
//  NumberClimbGame
//
//  Created by Lesley Lopez on 6/3/24.
//

import SwiftUI

struct ContentView: View {
    // global vars are put here for scope
    
    @State var displayNumber = 0
    @State var goUp = true

    var body: some View {
        
        VStack{
            Text(String(displayNumber))
                .font(.largeTitle)
            
            Button {
            action: do {
                if goUp == true{
                    increase()
                    if displayNumber >= 50{
                        goUp = false
                    }
                }else {
                    decrease()
                    if displayNumber <= 0 {
                        goUp = true
                    }
                }
                
            }
                
                
               
                
            } label: {
                Text("Tap Me!")
            }
            
        }
        
        
      

    }
    
    func decrease(){
        displayNumber -= Int.random(in: 1...10)
        
    }
    
    func increase(){
        displayNumber += Int.random(in: 1...10)
    }
    
    
}

#Preview {
    ContentView()
}
