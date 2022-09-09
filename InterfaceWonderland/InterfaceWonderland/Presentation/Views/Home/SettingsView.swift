//
//  SettingsView.swift
//  InterfaceWonderland
//
//  Created by Fábio Carvalho on 09/09/2022.
//

import SwiftUI

struct SettingsView: View {
    
    @AppStorage("isDarkMode") private var isDarkMode: Bool = true
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            VStack(alignment: .center, spacing: 12) {
                Image("orangeLogo")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: .black.opacity(0.25), radius: 8, x: 0, y: 4)
                
                Text("Interface Wonderland".uppercased())
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal, 20)
                
            } //:VStack
            .padding()
            
            Form {
                // #1
                Section {
                    Text("In order to completely isolate each experience all back buttons made unavailable immediately after starting them. To go back to the home view just triple tap anywhere on the current screen.")
                        .font(.callout)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                } header: {
                    Text("Notice")
                }
                
                // #2
                Section {
                    //TODO: Find out why this is buggy
                    Toggle(isOn: $isDarkMode) {
                        Text("Dark mode")
                    }
                    
                } header: {
                    Text("Settings")
                }
                
                // #3
                Section {
                    HStack {
                        Text("Developed by")
                            .foregroundColor(.gray)
                        Spacer()
                        Text("Fabio Carvalho")
                        
                    } //:HStack
                    
                    HStack {
                        Text("Designed by")
                            .foregroundColor(.gray)
                        Spacer()
                        Text("Fabio Carvalho")
                        
                    } //:HStack
                    
                    HStack {
                        Text("Version")
                            .foregroundColor(.gray)
                        Spacer()
                        Text("1.0.0")
                        
                    } //:HStack
                    
                } header: {
                    Text("Application")
                }
                
            } //:Form
            
            Spacer()
            
        } //:VStack
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
