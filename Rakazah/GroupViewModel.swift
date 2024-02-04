//
//  GroupViewModel.swift
//  Rakazah
//
//  Created by lana alfaadhel on 27/01/2024.
//

// the group functions (add and delete)
import Foundation
import SwiftUI

class GroupViewModel: ObservableObject{
    
    @Published var groups: [Group] = []
    
    
    func addGroup(GroupName: String, GroupMembersCount: Int, Isleader: Bool){
        let newGroup = Group(GroupName: GroupName, GroupMembersCount: GroupMembersCount, IsLeader: Isleader, tasks: [] )
        
        groups.append(newGroup)
    }
    
    
    func deleteGroup(Group: Group){
        if let index = groups.firstIndex(of: Group){
            groups.remove(at: index)
        }
        
    }
    


}
