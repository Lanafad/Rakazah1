//
//  TaskCreationView.swift
//  Rakazah
//
//  Created by lana alfaadhel on 31/01/2024.
//

import SwiftUI

struct TaskCreationView: View {
    
    @State private var TaskName = ""
    @State private var TaskReward = ""
    @State private var DeadLine = Date.now
    @ObservedObject var TaskViewModel: TaskViewModel

    @Environment(\.dismiss) var dismiss

    
    var body: some View {
        
        TextField("Task Name", text: $TaskName)
            
        TextField("Task Reward", text: $TaskReward)
        
        DatePicker(selection: $DeadLine, in: ...Date.now, displayedComponents: .date) {
            Text("Select a deadline")
        }
        Button("Create Task") {
            
            TaskViewModel.addTask(TaskName: TaskName, TaskReward: TaskReward, DeadLine: DeadLine)
            dismiss()

        }    }
}


//
//#Preview {
//    TaskCreationView()
//}
