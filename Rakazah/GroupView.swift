//
//  GroupView.swift
//  Rakazah
//
//  Created by lana alfaadhel on 27/01/2024.
//

// the group tab design

import SwiftUI

struct GroupView: View {
    var group: Group
    
    var body: some View {
        
        
            ZStack{
                
                
                RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                    .fill(.rGreen)
                    .opacity(0.8)
                    .frame(width: 365, height: 146)
                
                
                // displays the circles
                HStack(spacing: -10) {
                    
                    
                    if (group.GroupMembersCount < 7){
                        ForEach(0..<group.GroupMembersCount, id :\.self){ index in
                            Circle()
                                .fill(.black)
                                .opacity(0.3)
                                .frame(width: 28, height: 80, alignment: .top)
                            
                        }
                    } else if (group.GroupMembersCount > 6){
                        let num = group.GroupMembersCount - 6
                        HStack(spacing: -10){
                            
                            ZStack{
                                Circle()
                                    .fill(.black)
                                    .opacity(0.7)
                                    .frame(width: 28, height: 80, alignment: .top)
                                    .overlay(
                                        
                                        Text("+ \(num)")
                                            .font(.system(size: 12))
                                            .foregroundColor(.white)
                                            .padding(.bottom, 50)
                                        
                                    )
                                
                            }
                            
                            ForEach(0...3, id :\.self){ index in
                                Circle()
                                    .fill(.black)
                                    .opacity(0.3)
                                    .frame(width: 28, height: 80, alignment: .top)
                                
                            }
                        }
                    }
                }
                .frame(width: 335, height: 120, alignment: .topLeading)
                
                
                // the text stack on the card
                HStack{
                    
                    Text("مجموعة \(group.GroupName) \n \(group.GroupMembersCount) أعضاء")
                        .font(.system(size: 17))
                        .multilineTextAlignment(.trailing)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(width: 245, height: 146, alignment: .topTrailing)
                }
                .frame(width: 335, height: 120, alignment: .topTrailing)
                
                
            }
       
        
    }
    
}
//#Preview {
//    GroupView()
//}
