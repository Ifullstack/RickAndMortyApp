//
//  NavigationBar+View.swift
//  RickAndMortyApp
//
//  Created by Cane Allesta on 7/9/23.
//

import SwiftUI

struct NavigationBarView: View {
    var title = ""
    @State var showSheet = false
    @Binding var contentHasScrolled: Bool
    
    @EnvironmentObject var model: NavigationBarModel
    @AppStorage("showAccount") var showAccount = false
    @AppStorage("isLogged") var isLogged = false
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(maxWidth: .infinity)
                .frame(height: 100)
                .background(.ultraThinMaterial)
                .ignoresSafeArea()
                .frame(maxHeight: .infinity, alignment: .top)
                .blur(radius: contentHasScrolled ? 10 : 0)
                .opacity(contentHasScrolled ? 1 : 0)
            
            Text(title)
                .animatableFont(size: contentHasScrolled ? 22 : 34, weight: .bold)
                .foregroundStyle(.primary)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .padding(.horizontal, 20)
                .padding(.top, 24)
                .opacity(contentHasScrolled ? 0.7 : 1)
        }
        .offset(y: model.showNav ? 0 : -120)
        .accessibility(hidden: !model.showNav)
        .offset(y: contentHasScrolled ? -16 : 0)
    }
}

class NavigationBarModel: ObservableObject {
    // Navigation Bar
    @Published var showNav: Bool = true
}
