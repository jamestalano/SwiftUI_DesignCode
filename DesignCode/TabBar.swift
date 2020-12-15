//
//  TabBar.swift
//  DesignCode
//
//  Created by James Talano on 09/15/20.
//  Copyright © 2019 James Talano. All rights reserved.
//

import SwiftUI

struct TabBar: View {
   var body: some View {
      TabView {
         Home().tabItem {
            Image("IconHome")
            Text("Home")
         }
         .tag(1)
         ContentView().tabItem {
            Image("IconCards")
            Text("Certificates")
         }
         .tag(2)
         Settings().tabItem {
            Image("IconSettings")
            Text("Settings")
         }
         .tag(3)
      }
      .edgesIgnoringSafeArea(.top)
   }
}

#if DEBUG
struct TabBar_Previews: PreviewProvider {
   static var previews: some View {
      TabBar()
//         .environment(\.colorScheme, .dark)
   }
}
#endif
