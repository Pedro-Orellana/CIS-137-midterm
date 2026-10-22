//
//  DetailScreen.swift
//  Midterm_PedroOrellana
//
//  Created by Pedro Orellana on 10/21/26.
//

import SwiftUI

struct DetailScreen: View {
    
    let item: Subject
    let backgroundColor: Color
    
 
    
    var body: some View {
        
        let textColor = item.color == "white" || item.color == "yellow" || item.color == "orange" ? Color.black : Color.white
        
        VStack {
            Image(item.imageName)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 200, maxHeight: 200)
            
            Text(item.name)
                .font(.largeTitle)
                .bold()
                .padding()
                .foregroundStyle(textColor)
            
            Spacer()
            
            Text(item.description)
                .padding()
                .foregroundStyle(textColor)
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundColor.gradient)
    }
    
}

#Preview {
    
    let subject = Subject(
        id: "asdf",
        name: "Swift",
        description: "This is one of my favorite languages in the world",
        imageName: "swift",
        color: "orange",
        summary: "This is Kotlin's summary",
    )
    
    DetailScreen(item: subject, backgroundColor: Color.orange)
}
