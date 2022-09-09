//
//  TestNavView.swift
//  InterfaceWonderland
//
//  Created by Fábio Carvalho on 09/09/2022.
//

import SwiftUI

struct TestNavView: View {
    
    @Environment(\.presentationMode) private var presentationMode
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
        } //:VStack
        .navigationTitle("Test")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .onTapGesture(count: 3) {
            presentationMode.wrappedValue.dismiss()
        }
        
    }
}

struct TestNavView_Previews: PreviewProvider {
    static var previews: some View {
        TestNavView()
    }
}
