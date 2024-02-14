//
//  BorderButtonView.swift
//  ButtonPractice
//
//  Created by Chirag Tailor on 14/02/2024.
//

import SwiftUI

struct BorderButtonView: View {
    
    @State var title: String = "Primary"
    @State var font: Font = .title
    @State var padding: Edge.Set = .all
    @State var isPaddingLengthRequired: Bool = false
    @State var paddingLength: CGFloat = 14
    @State var isCustomBackgroundColor: Bool = false
    @State var isCustomForegroundColor: Bool = false
    @State var backgroundColor: Color = .black
    @State var foregroundColor: Color = .white
    @State var cornerRadius: CGFloat = 25
    @State var strokeLineWidth: CGFloat = 2
    var buttonPressClosure: (() -> Void)?
    
    var body: some View {
        Button(title) {
            if let buttonPressClosure = buttonPressClosure {
                buttonPressClosure()
            }
        }
        .font(font)
        
        .padding(padding, isPaddingLengthRequired ? paddingLength : nil)
        .foregroundColor(isCustomForegroundColor ? Color("cbsBlue") : foregroundColor)

        .background(Capsule()
            .strokeBorder(Color.blue,lineWidth: strokeLineWidth)
            .background(backgroundColor)
            .clipped()).clipShape(Capsule())

        .cornerRadius(cornerRadius)
    }
}

#Preview {
    BorderButtonView()
}
