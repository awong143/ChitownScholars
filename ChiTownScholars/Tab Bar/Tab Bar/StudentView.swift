//
//  StudentView.swift
//  Tab Bar
//
//  Created by sermacbook_09 on 7/8/24.
//

import SwiftUI

struct StudentView: View {
    var body: some View {
        TabView{
            tabFour()
                .tabItem{
                    Image(systemName: "magnifyingglass")
                    Text("Search")
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
    StudentView()
}
