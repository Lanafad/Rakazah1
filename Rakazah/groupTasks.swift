//
//  groupTasks.swift
//  Rakazah
//
//  Created by lujain alrasheed on 13/07/1445 AH.
//

import SwiftUI
//import Modals

struct groupTasks: View {
    @State  private var showSheet : Bool = false
    var body : some View {
        ZStack{
            Color("RBeige")
                .ignoresSafeArea()
            
            Button ("+"){
                
                showSheet.toggle()
            }
            
            .sheet(isPresented: $showSheet){
                mysheet()
                    .presentationDetents([.height(628), .medium, .large])

            }}}}
struct mysheet :View {
    @State private var username: String = ""
    @State private var birthDate = Date.now
    @State private var currentDate = Date()
    @State private var selection = "Red"
    let members = [""]
    var body:some View{
        VStack {
            Text("إنشاء المهمة")
                .font(.system(size: 22))
                .fontWeight(.semibold)
                .padding(.leading, 250)
                .padding(.top, 22)
            // .padding(.bottom, 150)
            
            HStack {
               
                Text("اسم المهمة")
                    .font(.system(size: 22))
                    .padding(.top, 15)
                    .padding(.leading,270)
                    
                
            }
            
            TextField("مثال: تغسيل ملابس", text: $username)
               
                .padding(.leading,250)
          
            Text("المكافأة")
                .font(.system(size: 22))
                .padding(.top, 15)
                .padding(.leading,300)
            
            TextField(" مثال: عزيمة عشاء", text: $username)
                .padding(.leading,250)
            
           
            
        }
        VStack {
            HStack {
               
                Text("موعد التسليم")
                    .font(.system(size: 22))
                    .padding(.top, 15)
                    .padding(.leading,250)
                
            }
            
            HStack {
                DatePicker("", selection: $currentDate, displayedComponents: .date)
                    .frame(maxWidth: .infinity)
                
                DatePicker("", selection: $currentDate, displayedComponents: .hourAndMinute)
                    .labelsHidden()
            }
            .padding(.horizontal,40)
        }
        
               .pickerStyle(.menu)
        
        
        HStack{
            
            Text("صاحب المهمة")
                .font(.system(size: 22))
                .padding(.top, 15)
                .padding(.leading,240)
      
            Picker("Select a member", selection: $selection) {
                ForEach(members, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.menu)
            .padding(.leading,-220)
            .padding(.top, 17)
            
            
            
        }
        
        Spacer()
        Button(action: { }, label: {
            ZStack{
                Text("إنشاء").foregroundStyle(Color.white)/*.padding(.trailing, 200)*/
                    .font(.system(size: 24))
                
            }
            .padding()
            .frame(width: 327, height: 57)
            .background{
                Color("RBrown")
                
                
                
            }
            .cornerRadius(20)
            
        })
        
        
    }
}
    
    

    
    #Preview {
        groupTasks()
    }
    

