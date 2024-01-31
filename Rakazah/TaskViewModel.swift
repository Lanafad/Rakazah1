//
//  TaskViewModel.swift
//  Rakazah
//
//  Created by lana alfaadhel on 31/01/2024.
//

import Foundation


class TaskViewModel: ObservableObject{
    
    @Published var tasks: [Task] = []

    
    func addTask(TaskName: String, TaskReward: String, DeadLine: Date){
        let NewTask = Task(TaskName: TaskName, TaskReward: TaskReward, DeadLine: DeadLine)
        
        tasks.append(NewTask)
    }
    

    func TaskDone(Task: Task){
        // do something to make the task go to the done pile
        
    }

}
