//
//  ContentView.swift
//  Charty
//
//  Created by Tyler Pavay on 4/17/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                title
                description
                NavigationLink("View Charts", destination: ChartListView())
                    .foregroundStyle(Color(UIColor.label))
                    .fontWeight(.heavy)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.accent)
                            .shadow(color: .accent, radius: 8)
                        )
                    
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
            .background(Color(UIColor.systemBackground))
            
            
        }
    }
    
    private var title: some View {
        Text("Charty")
            .font(.system(size: 60, weight: .heavy))
            .foregroundStyle(Color(UIColor.label))
    }
    
    private var description: some View {
        Text("The best way to learn Swift Charts")
            .font(.subheadline)
            .multilineTextAlignment(.center)
    }
}

#Preview("Light Mode") {
    ContentView()
        .preferredColorScheme(.light)
}

#Preview("Dark Mode") {
    ContentView()
        .preferredColorScheme(.dark)
}
