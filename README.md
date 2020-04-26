# ios-animated-fab-button-swiftui

[![Build Status](https://travis-ci.org/marmelroy/TVButton.svg?branch=master)](https://travis-ci.org/marmelroy/TVButton)

How to create Animated FAB Button in IOS Swift UI 
A cool new way use swift animations, they make our life so easier.

![](https://github.com/sunydepalpur/ios-animated-fab-button-swiftui/blob/master/FabIconMenu.gif)

```swift
import SwiftUI

struct FabUI: View {
    @State var showFabAnimation = false
    
    var body: some View {
        ZStack {
            VStack(alignment: .center) {
                Spacer()
                Text("Fab Icon Menu: IOS Day2 Challange")
                    .font(.title)
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
            self.showFabAnimation = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                self.showFabAnimation = false
            }
        }
    }
}
```
