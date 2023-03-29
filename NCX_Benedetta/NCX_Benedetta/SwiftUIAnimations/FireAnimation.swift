//
//  FireAnimation.swift
//  NCX_Benedetta
//
//  Created by benedetta on 29/03/23.
//

import SwiftUI

struct FireAnimation: View {
    
    @State var Fire : String = ""
    
    var body: some View {
        ZStack{
            Color("myBackground").ignoresSafeArea()

            VStack(alignment:.center){
                
                Image(Fire)
                    .resizable()
                    .onAppear(perform: timerRobot)
            }
        }
    }
func timerRobot(){
        
  var index = 1
    let timer = Timer.scheduledTimer(withTimeInterval: 0.25, repeats: true) { (Timer) in
            
        Fire = "fire\(index)"
            
        index += 1
            
        if (index > 4){
            index = 1
            
            }
        }
    }
}

struct FireAnimation_Previews: PreviewProvider {
    static var previews: some View {
        FireAnimation()
    }
}
