//
//  GroupTasksView.swift
//  Rakazah
//
//  Created by lana alfaadhel on 29/01/2024.
//

import SwiftUI

struct GroupTasksView: View {
    
    @State var isShowingTasksSheet = false
    @ObservedObject var taskViewModel = TaskViewModel()

    var body: some View {
        Text("group tasks view")
        
        
        Button(action: {isShowingTasksSheet.toggle()}, label: {
            Text("Button")
        })
        .sheet(isPresented: $isShowingTasksSheet, content: {
            TaskCreationView(TaskViewModel: taskViewModel)})
        
        ForEach(taskViewModel.tasks, id: \.self) { Task in
            
            TaskView(task: Task)
            
        }
    }
}

#Preview {
    GroupTasksView()
}
