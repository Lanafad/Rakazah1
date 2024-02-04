//
//  GroupCreationView.swift
//  Rakazah
//
//  Created by lana alfaadhel on 27/01/2024.
//

// the group creation sheet

import SwiftUI

struct GroupCreationView: View {
    
    @State private var GroupName = ""
    @State private var GroupMemebersCount = 0
    @State private var members = ""
    @State private var IsLeader = false
    @ObservedObject var groupViewModel: GroupViewModel
    @Environment(\.presentationMode) var presentationMode


    var body: some View {
        VStack{
            Rectangle()
                .padding()
                .frame(width: 50, height: 7)
                .background(.gray.opacity(0.4))
                .cornerRadius(100)
               .padding(.top, 30)
            
            
            Spacer()
            
            Text("إنشاء مجموعة")
                .bold()
                .font(.title)
                .padding(.leading, 170)
                .padding(.bottom, 50 )
                .padding(.top, 20)
            
            VStack(){
                
                Text("اسم المجموعة")
                    .bold()
                    .padding(.leading, 250)
                    .font(.headline)
                
                TextField("", text: $GroupName)
                    .background(.clear)
                    .frame(width: 400, height: 50)
                    .background(.gray.opacity(0.2))
                    
                
            }
            
            VStack{
                
                Text("الاعضاء")
                    .padding(.leading, 300)
                    .font(.headline)
                    .bold()
                
                TextField("@mail.com", text: $members)
//                    .foregroundColor(Color("rGreen"))
                    .background(.clear)
                    .frame(width: 400, height: 50)
                    .background(.gray.opacity(0.2))
                
            }          
            
            HStack(){
                Toggle("", isOn: $IsLeader )

                    Spacer()
                
                Text("هل انت قائد هذه المجموعة؟")
                    .frame(width: 347, alignment: .trailing)
                    .font(.headline)
                    .bold()
                
                    
                
            }
            .frame(width: 380, height: 50, alignment: .center)
            
            
          
            Button(action: {
                                groupViewModel.addGroup(GroupName: GroupName, GroupMembersCount: GroupMemebersCount, Isleader: IsLeader)
                                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("إنشاء")
                    .frame(width: 327.0, height: 57.0)
                    .background(Color("RBrown"))
                    .foregroundColor(.white)
                    .cornerRadius(100)
                    .accessibilityLabel("Create")
                    .padding(.top,300)
                
            })
               
         
        } .multilineTextAlignment(.trailing)

    
    }
}

