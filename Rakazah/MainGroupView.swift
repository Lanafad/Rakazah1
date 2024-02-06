//
//  GroupView.swift
//  Rakazah
//
//  Created by lana alfaadhel on 24/01/2024.
//

// the main group view

import SwiftUI

struct MainGroupsView: View {
    
    
    @ObservedObject var groupViewModel = GroupViewModel()
    @ObservedObject var taskViewModel = TaskViewModel()
    
    var body: some View {
        
        NavigationView{
            
            TabView{
                
                ScrollView{
                    
                    // text stack
                    VStack{
                        Text("حي الله  ،")
                            .padding(.horizontal, 40)

                            .font(.system(size: 32))
                            .bold()
                            .frame(width: 440, height: 20, alignment: .trailing)
                            .padding(.bottom)
                        
                        Text("انضم الى مجموعتك أو كون مجموعتك الخاصة!")
                            .font(.system(size: 16))
                            .frame(width: 363, height: 20, alignment: .trailing)
                    }
                    .padding(.top)
                    
                    
                    // create group button
                    Button(action: {groupViewModel.isShowingGroupSheet = true}
                           , label: {
                        ZStack{
                            RoundedRectangle(cornerSize: CGSize(width: 29, height: 10))
                                .stroke(.gray, style: StrokeStyle(lineWidth: 1, dash: [8]))
                                .frame(width: 375, height: 113, alignment: .center)
                                .background(Color(.systemGray5).cornerRadius(19))
                            
                            HStack{
                                Text("اضافة مجموعة")
                                    .font(.system(size: 14))
                                    .foregroundColor(.black)
                                    .fontWeight(.semibold)
                                
                                
                                Image(systemName: "plus.circle.fill")
                                    .font(.system(size: 30))
                                    .foregroundColor(.rBrown)
                                
                            }
                        }
                        .padding()
                    })
                    
                    // opens/closes sheet
                    .sheet(isPresented: $groupViewModel.isShowingGroupSheet, content: {
                        GroupCreationView(groupViewModel: groupViewModel)})
                    
                    // displays groups
                    ForEach(groupViewModel.groups, id: \.self) { group in
                        
                        if (group.IsLeader){
                            NavigationLink(destination: GroupTasksViewAdmin(), label: {GroupView(group: group)
                                    .contextMenu {
                                        Button("Delete") {
                                            groupViewModel.deleteGroup(Group: group)
                                        }
                                    }
                                
                            })

                        } else{
                            NavigationLink(destination: GroupTasksViewMember(), label: {GroupView(group: group)
                                    .contextMenu {
                                        Button("Delete") {
                                            groupViewModel.deleteGroup(Group: group)
                                        }
                                    }
                                
                            })
                        }
                        
                        
                        
                        
                    }
                    
                }
                .padding(.top, 40)
                .background(.rBeige, ignoresSafeAreaEdges: .all)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("الرئيسية")
                }
                
                Profile()
                    .tabItem {
                        Image(systemName: "person.crop.circle.fill")
                        Text("الحساب")
                        
                    }
            }


            
        }
        .accentColor(.rBrown)
        .onAppear() { UITabBar.appearance().backgroundColor = .white}
    }

    
 
    
}


#Preview {
    MainGroupsView()
}
