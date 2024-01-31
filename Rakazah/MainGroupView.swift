//
//  GroupView.swift
//  Rakazah
//
//  Created by lana alfaadhel on 24/01/2024.
//

// the main group view


import SwiftUI

struct MainGroupsView: View {
    
    
    @State private var isShowingGroupSheet = false
    @ObservedObject var groupViewModel = GroupViewModel()
    
    var body: some View {
        NavigationView{
            
            TabView{
                
                ScrollView{
                    
                    // text stack
                    VStack{
                        Text("حي الله  ،")
                            .font(.system(size: 32))
                            .bold()
                            .frame(width: 363, height: 20, alignment: .trailing)
                            .padding(.bottom)
                        
                        Text("انضم الى مجموعتك أو كون مجموعتك الخاصة!")
                            .font(.system(size: 16))
                            .frame(width: 363, height: 20, alignment: .trailing)
                    }
                    .padding(.top)
                    
                    
                    // create group button
                    Button(action: {isShowingGroupSheet.toggle()}
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
                    .sheet(isPresented: $isShowingGroupSheet, content: {
                        GroupCreationView(groupViewModel: groupViewModel)})
                    
                    // displays groups
                    ForEach(groupViewModel.groups, id: \.self) { group in
                        
                        NavigationLink(destination: GroupTasksView(), label: {GroupView(group: group)
                                .contextMenu {
                                            // the grouptasksview should take a group variable that has the tasks array so it can display them
                                    Button("Delete") {
                                        groupViewModel.deleteGroup(Group: group)
                                    }
                                }
                            
                        })

                        
                    }

                }
                .padding(.top, 40)
                .background(.rBeige)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                
                ContentView()
                    .tabItem {
                        Image(systemName: "person.crop.circle.fill")
                        Text("Profile")
                        
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


