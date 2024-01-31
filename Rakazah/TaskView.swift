//
//  TaskView.swift
//  Rakazah
//
//  Created by lana alfaadhel on 30/01/2024.
//

import SwiftUI

struct TaskView: View {
    var task : Task
    var body: some View {
        ZStack{
            
            
            RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                .fill(.rGreen)
                .opacity(0.8)
                .frame(width: 345, height: 169)
            
            

            VStack{
                
                HStack{
                    
                    
                    Circle()
                        .fill(.black)
                        .opacity(0.3)
                        .frame(width: 28)
                    
                    Spacer()
                    
                    VStack{
                        Text(task.TaskName)
                            .font(.system(size: 17))
                            .bold()
                            .multilineTextAlignment(.trailing)
                            .foregroundStyle(.white)
                        
                        Text(task.TaskReward)
                            .font(.system(size: 13))
                            .multilineTextAlignment(.trailing)
                            .foregroundStyle(.white)
                        
                    }
                    .padding(.top, 10)
                    Circle()
                        .fill(.gray)
                        .frame(width: 18)
                    
                    
                }
                .frame(width: 325, height: 120, alignment: .trailing)
                
                
                Text(task.DeadLine, format: .dateTime.day().month().hour())
                    .font(.system(size: 17))
                    .foregroundStyle(.white)
                    .frame(width: 325, height: 16, alignment: .bottomLeading)
            }
        }
    }
}
//
//#Preview {
//    TaskView()
//}
