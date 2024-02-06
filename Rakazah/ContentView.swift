//
//  ContentView.swift
//  Rakazah
//
//  Created by lana alfaadhel on 23/01/2024.
//


import SwiftUI

struct ContentView: View {
    @State var isActive : Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    // Customise your SplashScreen here
    var body: some View {
        if isActive {
            MainGroupsView()
        } else {
            ZStack{
                Color(.rBeige)
                    .ignoresSafeArea()
            VStack {
                
                VStack {
                    
                    Image("Logo")
                        .font(.system(size: 80))
                    Text(" ركازة")
                        .padding(.top, 5)
                        .font(Font.system(size: 26))
                        .foregroundColor(.black)
                        .bold()
                    
                    
                    
                    Text(" الإنجاز في خيمة واحدة")
                        .font(Font.system(size: 22))
                        .foregroundColor(.rDarkBrown)
                        .padding(.top, 5)


                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.00
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
            
        }
        }
    }
}

#Preview {
    ContentView()
}
