//
//  ListItem.swift
//  Midterm_PedroOrellana
//
//  Created by Pedro Orellana on 10/21/26.
//

import SwiftUI

struct ListItem: View {
    
    let item: Subject
    
    var body: some View {
        
        let textColor = item.color == "white" || item.color == "yellow" || item.color == "orange" ? Color.black : Color.white
        
        HStack {
            VStack {
                Text(item.name)
                    .font(.largeTitle)
                    .foregroundStyle(textColor)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text(item.summary)
                    .font(.footnote)
                    .foregroundStyle(textColor)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            
            Image(item.imageName)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 80, maxHeight: 80)
            
        }
        
  
        
    }
}

#Preview {
    
    let subject = Subject(
        id: "asdf",
        name: "Swift",
        description: "This is one of my favorite languages in the world",
        imageName: "swift_image",
        color: "purple",
        summary: "This is Kotlin's summary",
    )
    
    ListItem(item: subject)
}
