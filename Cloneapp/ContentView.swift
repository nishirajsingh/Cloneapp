//
//  ContentView.swift
//  Cloneapp
//
//  Created by student on 01/07/25.
//
// this is trial 
import SwiftUI

struct ContentView: View {
    @State private var inputText = ""
    var body: some View {
        VStack {
            Image(.login)
                .resizable()
                .scaledToFit()
                .frame(width: 200)
            
            ZStack{
                Rectangle()
                    .frame(width: 405,height: 800)
                    .padding(0)
                    .cornerRadius(30)
                    .padding([.bottom], -250)
                VStack{
                    Text("Login")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .font(.system(size: 40))
                    TextField("Enter Username",text: $inputText)
                        .padding()
                        .background(.white)
                        .frame(width: 300,height: 50 )
                        .cornerRadius(30)
                    TextField("Enter Password",text: $inputText)
                        .padding()
                        .background(.white)
                        .frame(width: 300,height: 50 )
                        .cornerRadius(30)
                    HStack {
                        Button("Login In"){}
                            .padding()
                            .frame(width: 300,height: 50 )
                            .background()
                            .cornerRadius(30)
                    }
                }
            }
           
        }
        .padding(0)
    }
}

#Preview {
    ContentView()
}
