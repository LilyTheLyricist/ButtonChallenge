//
//  ContentView.swift
//  ButtonChallenge
//
//  Created by Jimenez, Lilian - Student on 9/16/25.
//

import SwiftUI

struct ContentView: View {
    @State private var myName = ""
    @State private var bluecounter = 0
    @State private var redcounter = 0
    @State private var greencounter = 0
    var body: some View {
        VStack {
            TextField(
                "Enter Name", text: $myName)
            Text("Welcome, \(myName)!")
                .font(.largeTitle)
                .fontWeight(.black)
            
            Text("\(bluecounter + redcounter + greencounter)")
                .font(.system(size: 100, weight: .bold, design: .rounded))
                .fontWeight(.black)
            HStack{
                Button {
                    bluecounter += 1
                } label: {
                    Circle()
                        .frame(width: 100, height: 200)
                        .foregroundStyle(.blue)
                        .overlay {
                            Text("\(bluecounter)")
                                .font(.system(size: 50, weight: .bold, design: .rounded))
                                .foregroundStyle(.white)
                        }
                }
                Button {
                    greencounter += 2
                } label: {
                    Circle()
                        .frame(width: 100, height: 200)
                        .foregroundStyle(.green)
                        .overlay {
                            Text("\(greencounter)")
                                .font(.system(size: 50, weight: .bold, design: .rounded))
                                .foregroundStyle(.white)
                        }
                }
                Button {
                    redcounter += 3
                } label: {
                    Circle()
                        .frame(width: 100, height: 200)
                        .foregroundStyle(.red)
                        .overlay {
                            Text("\(redcounter)")
                                .font(.system(size: 50, weight: .bold, design: .rounded))
                                .foregroundStyle(.white)
                        }
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
