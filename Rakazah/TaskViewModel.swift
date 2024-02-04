//
//  TaskViewModel.swift
//  Rakazah
//
//  Created by lana alfaadhel on 31/01/2024.
//

import Foundation


class TaskViewModel: ObservableObject{
    
    @Published var tasks: [Task] = []
    @Published var finishedTasks: [Task] = []

    
    func addTask(TaskName: String, TaskReward: String, DeadLine: Date){
        let NewTask = Task(TaskName: TaskName, TaskReward: TaskReward, DeadLine: DeadLine)
        
        tasks.append(NewTask)
    }
    

    func TaskDone(Task: Task){
            
        if let index = tasks.firstIndex(of: Task){
            finishedTasks.append(Task)
            tasks.remove(at: index)
            }
    }

}
