


import SwiftUI

struct ContentView: View {
    @State private var isSheet = false

   var body: some View {
       
        Button( "Sheet") {
            isSheet.toggle()
        }
        .sheet(isPresented: $isSheet){
            SheetContent()
        }
    }
}

struct SheetContent: View {
    
    @State var name = ""
    @State var members = ""
    
    var body: some View {
        
        VStack{
            Rectangle()
                .padding()
                .frame(width: 50, height: 7)
                .background(.gray.opacity(0.4))
                .cornerRadius(100)
               .padding(.top, 30)
            
            
            Spacer()
            
            Text("إنشاء مجموعة")
                .bold()
                .font(.title)
                .padding(.leading, 170)
                .padding(.bottom, 50 )
                .padding(.top, 20)
            
            VStack(){
                
                Text("اسم المجموعة")
                    .bold()
                    .padding(.leading, 250)
                    .font(.headline)
                
                TextField("", text: $name)
                    .background(.clear)
                    .frame(width: 400, height: 50)
                    .background(.gray.opacity(0.2))
                    
                
            }
            
            VStack{
                
                Text("الاعضاء")
                    .padding(.leading, 300)
                    .font(.headline)
                    .bold()
                
                TextField("@mail.com", text: $members)
                    .foregroundColor(Color("rGreen"))
                    .background(.clear)
                    .frame(width: 400, height: 50)
                    .background(.gray.opacity(0.2))
                
            }
          
               
         
            
            Button("إنشاء") {
                
                
            }.frame(width: 327.0, height: 57.0)
                .background(Color("RBrown"))
                .foregroundColor(.white)
                .cornerRadius(100)
                .accessibilityLabel("Create")
            
                .padding(.top,300)
        } .multilineTextAlignment(.trailing)

    
        
        
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
#Preview{
    ContentView()
}
