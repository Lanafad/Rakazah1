//
//  GroupCreationView.swift
//  Rakazah
//
//  Created by lana alfaadhel on 27/01/2024.
//

// the group creation sheet

import SwiftUI

struct GroupCreationView: View {
    
    @State private var GroupName = ""
    @State private var GroupMemebersCount = 0
    @ObservedObject var groupViewModel: GroupViewModel
    @Environment(\.presentationMode) var presentationMode


    var body: some View {
        VStack {
            TextField("Group Name", text: $GroupName)
                
            TextField("Members", value:  $GroupMemebersCount, format: .number)
                .keyboardType(.numberPad)


            Button("Create Group") {
                    groupViewModel.addGroup(GroupName: GroupName, GroupMembersCount: GroupMemebersCount)
                    presentationMode.wrappedValue.dismiss()
                
                
            }
        }
    }
}
