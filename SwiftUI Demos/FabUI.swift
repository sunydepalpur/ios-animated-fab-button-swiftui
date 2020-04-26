//
//  FabUI.swift
//  SwiftUI Demos
//
//  Created by Somesh Choudhary on 26/04/20.
//  Copyright © 2020 Somesh Choudhary. All rights reserved.
//

import SwiftUI

struct FabUI: View {
    @State var showFabAnimation = false
    
    var body: some View {
        ZStack {
            VStack(alignment: .center) {
//                Spacer()
//                Text("Fab Icon Menu: IOS Day2 Challange")
//                    .font(.title)
                Spacer()
                ZStack {
                    
                    HStack() {
                        Spacer()
                        Circle()
                            .frame(width: 65, height: 65)
                            .foregroundColor(Color.green)
                            .overlay(
                                Image(systemName: "play")
                                    .font(.system(size: 30))
                                .foregroundColor(Color.white)
                            )
                            .shadow(color: Color.black, radius: showFabAnimation ? 3 : 0)
                            .blur(radius: showFabAnimation ? -3 : 0)
                            .offset(x: showFabAnimation ? -120 : 0, y: 0)
                            .rotationEffect(.degrees(showFabAnimation ? 0 : 90))
                            .animation(Animation.easeIn(duration: 0.5).delay(0.5))
                    }
                    .padding(.trailing ,20)
                    
                    HStack() {
                        Spacer()
                        Circle()
                            .frame(width: 65, height: 65)
                            .foregroundColor(Color.green)
                            .overlay(
                                Image(systemName: "stop")
                                    .font(.system(size: 30))
                                .foregroundColor(Color.white)
                            )
                            .shadow(color: Color.black, radius: showFabAnimation ? 3 : 0)
                            .blur(radius: showFabAnimation ? -3 : 0)
                            .offset(x: 0, y:showFabAnimation ? -120 : 0)
                            .rotationEffect(.degrees(showFabAnimation ? 0 : 90))
                            .animation(Animation.easeIn(duration: 0.5).delay(0.5))
                    }
                    .padding(.trailing ,20)
                    
                    HStack() {
                        Spacer()
                        Circle()
                            .frame(width: 65, height: 65)
                            .foregroundColor(Color.green)
                            .overlay(
                                Image(systemName: "pause")
                                    .font(.system(size: 30))
                                .foregroundColor(Color.white)
                            )
                            .shadow(color: Color.black, radius: showFabAnimation ? 3 : 0)
                            .blur(radius: showFabAnimation ? -3 : 0)
                            .offset(x: showFabAnimation ? -80 : 0, y: showFabAnimation ? -80 : 0)
                            .rotationEffect(.degrees(showFabAnimation ? 0 : 90))
                            .animation(Animation.easeIn(duration: 0.5).delay(0.5))
                    }
                    .padding(.trailing ,20)
                    
                    HStack() {
                        Spacer()
                        Button(action: {
                            self.showFabAnimation.toggle()
                        }) {
                         Circle()
                            .frame(width: 65, height: 65)
                            .foregroundColor(Color.green)
                            .overlay(
                                Image(systemName: "plus")
                                    .font(.system(size: 30))
                                .foregroundColor(Color.white)
                            )
                            .shadow(color: Color.black, radius: 3)
                            .blur(radius: -3)
                            .rotationEffect(.degrees(showFabAnimation ? -90 : 0))
                            .animation(Animation.easeIn(duration: 0.5).delay(0.5))
                        }
                    }
                    .padding(.trailing ,20)
                    
                    
                }
            }
            
        }
        .onAppear() {
//            self.showFabAnimation = true
//            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
//                self.showFabAnimation = false
//            }
        }
    }
}

struct FabUI_Previews: PreviewProvider {
    static var previews: some View {
        FabUI()
    }
}
