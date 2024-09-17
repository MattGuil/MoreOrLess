//
//  ContentView.swift
//  MoreOrLessApp
//
//  Created by Matthieu Guillemin on 17/09/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var nbAttempts : String = ""
    
    var body: some View {
        VStack(spacing: 0) {
            
            VStack(alignment: .center) {
                Text("Hello Master CIM !!!")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding()
                    .shadow(color: .black, radius: 10, x: 5, y: 15)
                Text("TP 2 M. Guillemin")
                    .padding()
            }.frame(minWidth: 0,
                    maxWidth: .infinity,
                    minHeight: 0,
                    maxHeight: 150,
                    alignment: .center
            )
             .background(Color(.sRGB, white: 0.95, opacity: 1.0))
            
            Divider()
                .frame(height: 15)
                .background(.blue)
            
            VStack(alignment: .center) {
                
                Text("MORE OR LESS")
                    .padding()
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
                
                Spacer()
                
                Text("Nombre de tentatives :")
                
                TextField("...", text: $nbAttempts)
                    .padding()
                    .frame(maxWidth: 300,
                           alignment: .center
                    )
                    .background(Color(.sRGB, white: 0.95, opacity: 1.0))
                    .foregroundColor(.blue)
                
                
                Button("Jouer") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }.padding()
                 .frame(maxWidth: 300,
                        alignment: .center
                 )
                 .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
                VStack {
                    Text("Indication : \(nbAttempts)")
                        .padding()
                }.foregroundColor(.white)
                 .frame(maxWidth: .infinity,
                        maxHeight: 100,
                        alignment: .center
                 )
                 .background(.blue)
                 .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

            }
            
        }.frame(maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: .top)
    }
}

#Preview {
    ContentView()
}
