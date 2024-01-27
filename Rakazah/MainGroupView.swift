//
//  GroupView.swift
//  Rakazah
//
//  Created by lana alfaadhel on 24/01/2024.
//


import SwiftUI

struct GroupsView: View {
    
//    @Binding var something: String
//    @State var bool: Bool = false
    
    var body: some View {
        
        
        
        TabView{
            
            NavigationStack{
                ZStack{
                    Color("RBeige")
                        .ignoresSafeArea()
                    
                    VStack{
                        VStack{
//                            \(self.something)
                            Text("حي الله  ،")
                                .font(.system(size: 32))
                                .bold()
                                .frame(width: 363, height: 20, alignment: .trailing)
                                .padding(.bottom)
                            
                            Text("انضم الى مجموعتك أو كون مجموعتك الخاصة!")
                                .font(.system(size: 16))
                                .frame(width: 363, height: 20, alignment: .trailing)
                        }
                        .padding(.bottom)
                        
                        
//                        NavigationLink(destination: testsheet()){
                            
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
                                        .foregroundColor(Color("RBrown"))
                                    
                                }
                            }
                            .padding()
//                        }
                        
                        
                        
                        
                    }
                    .frame(width: 393,height: 600,alignment: .top)
                    
                }
            }
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                
                
                
                trialview()
                    .tabItem {
                        Image(systemName: "person.crop.circle.fill")
                        Text("Profile")
                        
                    }
                
            
        }
        .accentColor(.rBrown)
        .onAppear() { UITabBar.appearance().backgroundColor = .white}
        
        
        
    }
    
}

#Preview {
    GroupsView()
}

