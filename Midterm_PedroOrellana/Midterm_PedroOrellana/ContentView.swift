//
//  ContentView.swift
//  Midterm Project
//  Created by Pedro Orellana
//  10/21/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        let data = Bundle.main.decode([Subject].self, from: "Data.json")
        
        NavigationStack {
            List{
                ForEach(data) { item in
                    
                    let backgroundColor = switch(item.color) {
                        
                    case "purple":
                        Color.purple
                    
                    case "blue":
                        Color.blue
                        
                    case "gray":
                        Color.gray
                        
                    case "yellow":
                        Color.yellow
                        
                    case "white":
                        Color.white
                        
                    case "indigo":
                        Color.indigo
                        
                    case "orange":
                        Color.orange
                        
                    default:
                        Color.black
                    }
                    
                    NavigationLink(destination: DetailScreen(item: item, backgroundColor: backgroundColor)) {
                        ListItem(item: item)
                    }
                    .listRowBackground(backgroundColor)
                        
                }
            }
            .navigationTitle("My favorite languges")
            .navigationBarTitleDisplayMode(.automatic)
            
        }
        
       
    }
}

#Preview {
    ContentView()
}
