//
//  ContentView.swift
//  Saravjeet_SwiftUI
//
//  Created by Saravjeet Singh on 2023-01-22.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    @State private var isActive = true
    
    var body: some View {
        NavigationView{
            VStack {
                Text("Saravjeet Singh")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white).zIndex(100)
                    .padding()
                    
                
                Image("zing").frame(width: 50, height: 50, alignment: Alignment.center).fixedSize()
                
                
                Button("Click Me"){
                    showingAlert.toggle()
                }
                .padding(9.0)
                .alert("Important message", isPresented: $showingAlert) {
                    Button("OK", role: .cancel) { }
                }.background(Color.white).foregroundColor(Color.black)
            
            //.navigationTitle("Detail Title")
            
            
            NavigationLink(destination: Page_Two(), isActive: $isActive, label:  {
                Text("GO TO Page Two")
            }).font(.largeTitle).foregroundColor(Color.white)
                
        }
           
        }
        
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
