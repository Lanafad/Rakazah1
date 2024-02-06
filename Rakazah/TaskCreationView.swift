//
//  groupTasks.swift
//  Rakazah
//
//  Created by lujain alrasheed on 13/07/1445 AH.
//

import SwiftUI

struct TaskCreationView :View {
        @State private var TaskName = ""
        @State private var TaskReward = ""
        @State private var DeadLine = Date.now
        @State private var selection = 0
        @State var members = [String]()
        @ObservedObject var TaskViewModel: TaskViewModel


    var body:some View{
        VStack {
            Text("إنشاء المهمة")
                .font(.system(size: 22))
                .fontWeight(.semibold)
                .padding(.leading, 250)
                .padding(.top, 22)
            
            HStack {
               
                Text("اسم المهمة")
                    .font(.system(size: 22))
                    .padding(.top, 15)
                    .padding(.leading,270)
                    
                
            }
            TextField("مثال: تغسيل ملابس", text: $TaskName)
                .frame(width: 400, height: 50, alignment: .trailing)

                .multilineTextAlignment(.trailing)
          
            Text("المكافأة")
                .font(.system(size: 22))
                .padding(.top, 15)
                .padding(.leading,300)
            
            TextField(" مثال: عزيمة عشاء", text: $TaskReward)                    
                .frame(width: 400, height: 50, alignment: .trailing)
                .multilineTextAlignment(.trailing)
            
           
            
        }
        
        VStack {
            HStack {
               
                Text("موعد التسليم")
                    .font(.system(size: 22))
                    .padding(.top, 15)
                    .padding(.leading,250)
                
            }
            
            HStack {
                DatePicker("", selection: $DeadLine, displayedComponents: .date)
                    .frame(maxWidth: .infinity)
                
                DatePicker("", selection: $DeadLine, displayedComponents: .hourAndMinute)
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
                    
                    ForEach(members.indices) { index in
                        Text(members[index]).tag(index)
                    }
                }
                .pickerStyle(.menu)
                .padding(.leading,-220)
                .padding(.top, 17)
  
            
            
        }
 
        
        Spacer()
        Button(action: { 
            
            TaskViewModel.addTask(TaskName: TaskName, TaskReward: TaskReward, DeadLine: DeadLine, Members: members)
            TaskViewModel.isShowingSheet = false
            
        }, label: {
            ZStack{
                Text("إنشاء").foregroundStyle(Color.white)
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



    
//
//    
//    #Preview {
//        TaskCreationView()
//    }
//    
