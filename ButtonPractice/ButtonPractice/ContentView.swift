//
//  ContentView.swift
//  ButtonPractice
//
//  Created by Silvana Tekia on 12/02/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            
            
            Button("Primary") {
                print("press me ")
                
            }
            .font(.title)
            .padding(.all, 14)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(25)
            
        }
        Button("Primary") {
            print("pressed")
            
        }
        .font(.title)
        .padding(.all, 14)
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(25)
        
    }
     Button( "Secondary") {
        print("pressed")
    }
      .padding(.all)
    .foregroundColor(.white)
    .background(Color.black)
    .overlay(
    Capsule(style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
        .stroke(Color.blue, lineWidth: 2))
    

        Button("Secondary") {
            print("Pressed")
        }
        .padding(.all)
        .foregroundColor(.black)
        .background(Color.white)
        //.border(Color.blue, width: 3)
        .overlay(
        RoundedRectangle(cornerRadius: 25)
            .stroke(Color.blue, lineWidth: 3))
    
}
