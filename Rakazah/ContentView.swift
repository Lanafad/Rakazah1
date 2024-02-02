//
//  ContentView.swift
//  Rakazah
//
//  Created by lana alfaadhel on 23/01/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingSheet = false
    @State var textEditorText: String = ""
    @State var selection: Int = 0
    var body: some View {
        NavigationView {
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
                        .frame(width: 400,height:2)
                    Spacer()
                    Text("المهام")
                        .font(.system(size:25))
                        .frame(width: 370, height: 540, alignment:.topTrailing)
                    
                    
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
                        TaskInputSheet(isPresented: $isShowingSheet)
                    }
                }
                
                    .navigationTitle("العـائلـة")
                    .navigationBarBackButtonHidden(true)
        .toolbar{
            ToolbarItem(placement: .navigationBarTrailing) {
                
                NavigationLink(destination: profileView()) {
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
        }
    }
}
extension Array {
    func chunked(into size: Int) -> [[Element]] {
        stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
}
struct TaskInputSheet: View {
    
        @Binding var isPresented: Bool
        @State private var taskName = ""
        @State private var taskTime = Date()
        @State private var showErrorAlert = false
        @State private var errorMessage = ""
        @Environment(\.managedObjectContext) private var viewContext
        
        var body: some View {
            NavigationView {
                Form {
                    Section(header: Text("Task Details")) {
                        TextField("Task Name", text: $taskName)
                        DatePicker("Time", selection: $taskTime, displayedComponents: .hourAndMinute)
                        VStack(alignment: .leading, spacing: 10) {
                         
                                HStack(spacing: 20) {
                                  
                                        Button(action: {
                                           
                                        }) {
                                            HStack {
                                                ZStack {
                                                    RoundedRectangle(cornerRadius: 10)
                                                       
                                                        .background(
                                                            RoundedRectangle(cornerRadius: 10)
                                                                
                                                        )
                                                        .frame(width: 100, height: 50)
                                                        .overlay(
                                                            Circle()
                                                               
                                                                .frame(width: 20, height: 20)
                                                                .offset(x: -35)
                                                        )
                                                        
                                                }
                                            }
                                        }
                                        .buttonStyle(PlainButtonStyle())
                                    }
                                }
                            }
                        }
                    }
                    
                    Section {
                        Button(action: {
                            
                        }) {
                            Text("Save Task")
                                .font(.headline)
                                .frame(width: 300, height: 50)
                                .foregroundColor(.white)
                                .background(Color.gray)
                                .cornerRadius(10)
                                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 4)
                        }
                    }
                }
                
               
            }
        

       
        
        
        
        private func saveTask() {
         
         
            //  newTask.status = taskStatus
            //        let newTask = TaskEntity(context: viewContext)
            //        newTask.id = UUID()
            //        newTask.taskName = taskName
            //        newTask.taskTime = taskTime
            //        newTask.taskPriority = selectedPriority.rawValue
            //
            //        do {
            //            try viewContext.save()
            //        } catch {
            //            let nsError = error as NSError
            //            fatalError("Error saving new task: \(nsError), \(nsError.userInfo)")
            //        }
            
        }
    
struct TaskCardView: View {
    
    //    @State private var isChecked: Bool = false
    //    @State var priority: Priority
    //    var task: TaskEntity
    var body: some View {
        VStack{
            HStack{
                VStack(alignment: .leading) {
                    Text("Name:")
                    Text("Time:")
                    Text("Priority:")
                }
                .padding()
                .background(Color.gray.opacity(0.1))
                
                //NewR
                // .overlay(OneSideBorderShape().stroke(task.priority.Bordercolor, lineWidth: 5))
                .cornerRadius(15)
                .padding([.horizontal, .bottom])
                
                //NewR
                Button(action: {
                    
                    Text("done!")
                    
                    
                }) {
                    
                    
                    
                    //   Text("DONE!")
                }
                //.buttonStyle(CheckboxStyle(isChecked: task.status))
            }
        }
        .swipeActions {
            Button(role:.destructive) {
                print("Delete")
            }label:{
                Label("Delete", systemImage: "trash.circle.fill")
            }
        }
        
        
        
    }
}

#Preview {
    ContentView()
}
