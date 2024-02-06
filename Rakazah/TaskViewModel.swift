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
    @Published var isShowingSheet = false

    
    func addTask(TaskName: String, TaskReward: String, DeadLine: Date, Members: [String]){
        let NewTask = Task(TaskName: TaskName, TaskReward: TaskReward, DeadLine: DeadLine, Members: Members)
        
        tasks.append(NewTask)
    }
    

    func TaskDone(Task: Task){
            
        if let index = tasks.firstIndex(of: Task){
            finishedTasks.append(Task)
            tasks.remove(at: index)
            }
    }
    
     func updateChoices(forTaskAtIndex index: Int, GroupMembersString : String) {
         let GroupMembersArray = GroupMembersString.components(separatedBy: ",")
         tasks[index].Members = GroupMembersArray
         
         
    }
         
//         func updateChoices(Group : Group) {
//        members = Group.GroupMembers.components(separatedBy: ",").map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
//    }

}
