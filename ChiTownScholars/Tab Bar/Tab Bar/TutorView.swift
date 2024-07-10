//
//  TutorView.swift
//  Tab Bar
//
//  Created by sermacbook_09 on 7/8/24.
//

import SwiftUI

struct TutorView: View {
    var body: some View {
        TabView{
            tabOne()
                .tabItem{
                    Image(systemName: "calendar")
                    Text("Sessions")
                }
            tabTwo()
                .tabItem{
                    Image(systemName: "message")
                    Text("Chat")
                }
            
            tabThree()
                .tabItem{
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
    }
}

#Preview {
    TutorView()
}
