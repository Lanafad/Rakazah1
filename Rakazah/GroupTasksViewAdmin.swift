//
//  ContentView.swift
//  Rakazah
//
//  Created by lana alfaadhel on 23/01/2024.
//

import SwiftUI

struct GroupTasksViewAdmin: View {
    @State private var isShowingSheet = false
    @ObservedObject var taskViewModel = TaskViewModel()
    @State var textEditorText: String = ""
    @State var selection: Int = 0
    var body: some View {
//            NavigationView {
                
                
                ZStack {
                    Color("RBeige").edgesIgnoringSafeArea(.all)
                    VStack(alignment: .leading){
                        HStack{Spacer()}
                        Picker("Choose a side",selection: $selection ) {
                            Text("الحالية").tag(0)
                            Text("المكتملة").tag(1)
                        }.padding(0).padding()
                            .pickerStyle(SegmentedPickerStyle())
                            .padding(.top, 10)
                        
                        Color.black
                            .frame(width: 450,height:2)
                        Spacer()
                        Text("المهام")
                            .font(.system(size:25))
                            .frame(width: 389, height: 20, alignment:.topTrailing)
                            .padding(.top)
                        
                        ScrollView(){
                            
                            if (selection == 0){
                                ForEach(taskViewModel.tasks, id: \.self) { Task in
                                    
                                    TaskView(task: Task, taskViewModel: taskViewModel)
                                        .padding(.horizontal, 50)
                                    
                                    
                                }
                            }
                            else{
                                ForEach(taskViewModel.finishedTasks, id: \.self) { Task in
                                    
                                    TaskView(task: Task, taskViewModel: taskViewModel)
                                        .padding(.horizontal, 50)
                                            
                                        
                                    
                                }
                            }
                        }
                        VStack(alignment:.center){
                            HStack{Spacer()}
                         
                            Button(action: {
                                isShowingSheet = true
                            }) {
                                Text("إضافة مهمة +")
                                    .font(.headline)
                                    .frame(width: 300, height: 50)
                                    .foregroundColor(.white)
                                    .background(Color("RBrown"))
                                    .cornerRadius(10)
                                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 4)
                                  

                                
                            }
                        }
                        .sheet(isPresented: $isShowingSheet) {
                            TaskCreationView( TaskViewModel: taskViewModel)
                        }
                    }
                    
                        .navigationTitle("العـائلـة")
                        .navigationBarBackButtonHidden(true)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    
                    NavigationLink(destination: Profile()) {
                        VStack {
                            Image(systemName:"person.circle.fill")
                                .foregroundColor(Color("RDark Brown"))
    //                            .resizable()
                           /* Circle()*/ //profile photo
    //                            .frame(width:40, height: 40)
                            
                                Text("مسؤول")
                                .foregroundColor(Color("RBrown"))
                                .font(.system(size:10))
                            
                               }
                            }
                        }
                    }
                }
//            }
        }
    }

#Preview {
    GroupTasksViewAdmin()
}
