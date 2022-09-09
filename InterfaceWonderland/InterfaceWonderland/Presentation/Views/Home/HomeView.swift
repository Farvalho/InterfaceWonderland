//
//  HomeView.swift
//  InterfaceWonderland
//
//  Created by Fábio Carvalho on 09/09/2022.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showInfo: Bool = false
    
    var experiences: [Experience] = experiencesData
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 10) {
                VStack(alignment: .center, spacing: 8) {
                    Text("Choose your experience below")
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                    Text("and visit our info section for further details")
                        .font(.footnote)
                
                } //:VStack
                
                List {
                    ForEach(experiences) { experience in
                        NavigationLink(destination:experience.view) {
                            HStack(spacing: 10) {
                                Image(systemName: experience.image)
                                    .imageScale(.large)
                                
                                Text(experience.title)
                            } //:HStack
                        } //:NavigationLink
                    } //:ForEach
                } //:List
                
                
                Spacer()
                
            } //:VStack
            .navigationTitle("Welcome!")
            .padding(.top, 50)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        showInfo = true
                        
                    }) {
                        Image(systemName: "info.circle")
                            .foregroundColor(.accentColor)
                    }
                    .sheet(isPresented: $showInfo) {
                        SettingsView()
                    }
                }
            }
            
        } //:NavigationView
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(experiences: experiencesData)
    }
}
