//
//  ContentView.swift
//  ButtonPractice
//
//  Created by Silvana Tekia on 12/02/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            ButtonView(title: "Primary", isPaddingLengthRequired: true, isCustomBackgroundColor: true) {
                print("primary button 1 pressed")
            }
            
            ButtonView(title: "Primary", isPaddingLengthRequired: true, isCustomBackgroundColor: false, backgroundColor: .blue) {
                print("primary button 2 pressed")
            }
            
            
            BorderButtonView(title: "Secondary", font: .title2) {
                print("secondary button 1 pressed")
            }
            
            BorderButtonView(title: "Secondary", font: .title2, backgroundColor: .white, foregroundColor: .black, strokeLineWidth: 2) {
                print("secondary button 2 pressed")
            }
        }
    }
}

#Preview {
    ContentView()
}
