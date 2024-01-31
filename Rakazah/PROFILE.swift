//
//  PROFILE.swift
//  Rakazah
//
//  Created by lujain alrasheed on 19/07/1445 AH.
//

import SwiftUI

struct PROFILE: View {
    @State private var username: String = ""
    @State private var name: String = ""
    
    var body: some View {
        ZStack {
            Color("RBeige")
                .ignoresSafeArea()
            
            VStack {
                Text("لينا")
                    .font(.system(size: 34))
                    .fontWeight(.semibold)
                    .frame(alignment: .topLeading)
                
                Circle()
                    .frame(width: 129, height: 131)
                    .padding(.bottom, 22)
                
                TextField("اسم المستخدم", text: $username)
                    .multilineTextAlignment(.trailing)
                    .frame(width: 390, height: 50, alignment: .topLeading)
                    .background(.white)
                    .cornerRadius(20)
                    .padding(.bottom, 20)
                
                TextField(" اسم الحساب", text: $name)
                    .multilineTextAlignment(.trailing)
                    .frame(width: 390, height: 50, alignment: .topLeading)
                    .background(.white)
                    .cornerRadius(20)
                    .padding(.bottom, 40) // Add space of 40 between button and text fields
                
                Button(action: {}, label: {
                    Text("حفظ")
                        .foregroundStyle(Color.white)
                        .font(.system(size: 24))
                })
                .frame(width: 327, height: 57)
                .background(Color("RBrown"))
                .cornerRadius(20)
                .padding(.top, 22)
                
                Spacer()
            }
        }
    }
}

#Preview {
    PROFILE()
}
