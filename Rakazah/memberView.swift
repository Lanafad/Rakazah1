//
//  memberView.swift
//  Rakazah
//
//  Created by leena alyami on 21/07/1445 AH.
//

import SwiftUI

struct memberView: View {
    @State private var isShowingSheet = false
    @State var textEditorText: String = ""
    @State var selection: Int = 0
    var body: some View {
        NavigationView {
            ZStack {
                Color("RBeige").edgesIgnoringSafeArea(.all)
                VStack(alignment: .leading){
                    HStack{Spacer()}
                    Picker("Choose a side",selection: $selection ) {
                        Text("الحالية").tag(0)
                        Text("المكتملة").tag(1)
                    }.padding(0).padding()
                        .pickerStyle(SegmentedPickerStyle())
                        .padding(.top, 10)
                    
        
                    Color.black
                        .frame(width: 400,height:2)
                    
                    Text("المهام")
                        .font(.system(size:25))
                        .frame(width: 370, height: 600, alignment:.topTrailing)
                    }
                
                    .navigationTitle("العـائلـة")
                    .navigationBarBackButtonHidden(true)
        .toolbar{
            ToolbarItem(placement: .navigationBarTrailing) {
                
                NavigationLink(destination: profileView()) {
                    VStack {
                        Image(systemName:"person.circle.fill")
                            .foregroundColor(Color("RDark Brown"))
//                            .resizable()
                       /* Circle()*/ //profile photo
//                            .frame(width:40, height: 40)
                        
                            Text("عضو")
                            .foregroundColor(Color("RBrown"))
                            .font(.system(size:10))
                        
                           }
                        }
                    }
                }
            }
        }
    }
}


#Preview {
    memberView()
}
