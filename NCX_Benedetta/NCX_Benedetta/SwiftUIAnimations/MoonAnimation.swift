//
//  DarkTreeAnimation.swift
//  ProvaNCX
//
//  Created by benedetta on 28/03/23.
//

import SwiftUI

struct MoonAnimation: View {
    
    @State var Moon : String = ""
    
    var body: some View {
        
        ZStack{
            Color("myBackground").ignoresSafeArea()
            VStack(alignment:.center){
                
                Image(Moon)
                    .resizable()
                    .frame(width: 90, height: 90
                           , alignment: .center)
                    .onAppear(perform: timerRobot)
            }
        }
    }
    
func timerRobot(){
        
  var index = 1
    let timer = Timer.scheduledTimer(withTimeInterval: 0.3, repeats: true) { (Timer) in
            
        Moon = "luna\(index)"
            
        index += 1
            
        if (index > 10){
            index = 1
            
            }
        }
    }
}

struct MoonAnimation_Previews: PreviewProvider {
    static var previews: some View {
        MoonAnimation()
    }
}
