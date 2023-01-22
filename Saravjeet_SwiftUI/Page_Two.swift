//
//  Page_Two.swift
//  Saravjeet_SwiftUI
//
//  Created by Saravjeet Singh on 2023-01-22.
//

import SwiftUI
import CoreMotion

class MotionProcessor{
    var motionManager = CMMotionManager()
    
    init() {
        motionManager.magnetometerUpdateInterval = 1/60
        
        motionManager.startMagnetometerUpdates(to: .main, withHandler:{_,_ in
            
            
        })
    }
    
    
}
struct Page_Two: View {
    var body: some View {
        
        VStack{
            Text("Hello Bigday...")
            Text("X: ")
            Text("Y: ")
            Text("Z: ")
        }
//        NavigationView{
//            Text("Page Two")
//        }
//
    }
}

struct Page_Two_Previews: PreviewProvider {
    static var previews: some View {
        Page_Two()
    }
}
