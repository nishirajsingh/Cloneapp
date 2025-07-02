import SwiftUI

struct ContentView: View {
    @State private var inputText = ""
    @State private var password = ""
    @State private var animate = false  // Animation trigger
    
    var body: some View {
        VStack {
            Image(.login)
                .resizable()
                .scaledToFit()
                .frame(width: 200)
            
            ZStack {
                Rectangle()
                    .foregroundStyle(.white)
                    .frame(width: 405, height: 800)
                    .padding(0)
                    .cornerRadius(30)
                    .padding([.bottom], -250)
                
                VStack {
                    Text("Login")
                        .fontWeight(.bold)
                        .font(.system(size: 40))
                    
                    TextField("Enter Username", text: $inputText)
                        .padding()
                        .frame(width: 300, height: 50)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.black, lineWidth: 2)
                        )
                    
                    SecureField("Enter Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.black, lineWidth: 2)
                        )
                    
                    HStack {
                        Button("Login In") {
                            // action
                        }
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(.black)
                        .cornerRadius(30)
                        .foregroundStyle(.white)
                    }
                    
                    Text("Or")
                        .padding()
                    
                    HStack {
                        Image(.apple)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60)
                            .padding()
                        Image(.google)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .padding()
                        Image(.instagram)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .padding()
                    }
                }
                
            }
            // Start off screen (below) and animate to original position
            .offset(y: animate ? 0 : 500)
            .animation(.easeOut(duration: 0.7), value: animate)
        }
        .padding(0)
        .background(.black)
        .onAppear {
            animate = true
        }
    }
}

#Preview {
    ContentView()
}
