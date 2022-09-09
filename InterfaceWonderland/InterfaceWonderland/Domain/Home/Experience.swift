//
//  Experience.swift
//  InterfaceWonderland
//
//  Created by Fábio Carvalho on 09/09/2022.
//

import SwiftUI

enum ExperienceView {
    case numberOneView
    case numberTwoView
    case numberThreeView
}

struct Experience: Identifiable {
    var id = UUID()
    var title: String
    var image: String
    var entryView: ExperienceView
}

extension Experience {
    var view: some View {
        switch entryView {
        case .numberOneView:
            return TestNavView()
            
        case .numberTwoView:
            return TestNavView()
            
        case .numberThreeView:
            return TestNavView()
        }
    }
}
