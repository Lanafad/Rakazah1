//
//  ContentView.swift
//  Rakazah
//
//  Created by lana alfaadhel on 23/01/2024.
//

import SwiftUI

struct ContentView: View {
@State private var isShowingSheet = false
    var body: some View {
        
        ZStack {
            Color("RBeige").edgesIgnoringSafeArea(.all)
           
            Text("المهام")
                .font(.system(size:32))
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .leading)
                
                
            Button(action: {
                isShowingSheet = true
            }) {
                Text("New Task")
                    .font(.headline)
                    .frame(width: 300, height: 50)
                    .foregroundColor(.white)
                    .background(Color("RBrown"))
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 4)
            }
            .padding()
            .sheet(isPresented: $isShowingSheet) {
            
            }
        }
        
    }
}

#Preview {
    ContentView()
}
