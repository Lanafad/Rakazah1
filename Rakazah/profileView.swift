//
//  profileView.swift
//  Rakazah
//
//  Created by leena alyami on 20/07/1445 AH.
//

import SwiftUI

struct profileView: View {
    @Environment (\.presentationMode) var presentationMode
    var body: some View {
        ZStack{
            Color("RBeige").edgesIgnoringSafeArea(.all)
                 .navigationBarHidden(true)
             
             
           
             VStack(alignment: .leading){
                HStack{Spacer()}
                 
                 Button("Back"){
                     presentationMode.wrappedValue.dismiss()
                     
                 }.padding(.leading)
                 Spacer()
           }
         
                
         }
    }
}

#Preview {
    profileView()
}
