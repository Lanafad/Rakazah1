//
//  GroupViewModel.swift
//  Rakazah
//
//  Created by lana alfaadhel on 27/01/2024.
//

// the group functions
import Foundation
import SwiftUI

class GroupViewModel: ObservableObject{
    
    @Published var groups: [Group] = []
    @Published var isShowingGroupSheet = false

    
    func addGroup( GroupName: String, GroupMembersCount : inout Int, Isleader: Bool, GroupMembers : String) -> Group{
        
    
        var newGroup = Group(GroupName: GroupName, GroupMembersCount: GroupMembersCount, GroupMembers: GroupMembers, IsLeader: Isleader, tasks: [] )
        
        
        let countA = newGroup.GroupMembers.filter { $0 == "،"}.count
        let countB = newGroup.GroupMembers.filter { $0 == ","}.count
        
        newGroup.GroupMembersCount = countA + countB + 1
        
        groups.append(newGroup)

        return newGroup
        
    }
    
    
    func deleteGroup(Group: Group){
        if let index = groups.firstIndex(of: Group){
            groups.remove(at: index)
        }
        
    }
    



}
