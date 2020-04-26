//
//  ContentView.swift
//  SwiftUI Demos
//
//  Created by Somesh Choudhary on 26/04/20.
//  Copyright © 2020 Somesh Choudhary. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                FabUI()
                SideBarMenu()
            }
            .navigationBarTitle(Text("Home Page"), displayMode: .inline)
            .edgesIgnoringSafeArea(.top)
            .navigationBarHidden(false)
            .navigationBarItems(
                leading: Button(action: {
                    
                }) {
                    Image(systemName: "text.justify")
                }.accentColor(Color.green),
                trailing: Button(action: {
                    
                }) {
                    Image(systemName: "bell.fill")
                }.accentColor(Color.green)
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
