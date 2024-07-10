//
//  tabFour.swift
//  Tab Bar
//
//  Created by sermacbook_08 on 7/2/24.
//

import SwiftUI

struct tabFour: View {
    var body: some View {

        NavigationView {
        ScrollView{
            Text("Topics")
                .font(.title)
        HStack{
            VStack (alignment: .leading){
                NavigationLink(destination: Tutors()) {
                VStack{
                    Image("english")
                        .resizable()
                        .frame(width: 200, height: 150)
                    Text("English")
                    }
                }
                NavigationLink(destination: Tutors()) {
                    VStack{
                        Image("math")
                            .resizable()
                            .frame(width: 200, height: 150)
                        Text("Math")
                    }
                }
                NavigationLink(destination: Tutors()) {
                    VStack{
                        Image("science")
                            .resizable()
                            .frame(width: 200, height: 150)
                        Text("Science")
                    }
                }
                NavigationLink(destination: Tutors()) {
                    VStack{
                        Image("history")
                            .resizable()
                            .frame(width: 200, height: 150)
                        Text("History")
                    }
                }
            }
            VStack (alignment: .leading){
                NavigationLink(destination: Tutors()) {
                    VStack{
                        Image("language")
                            .resizable()
                            .frame(width: 200, height: 150)
                        Text("Language")
                    }
                }
                NavigationLink(destination: Tutors()) {
                    VStack {
                        Image("selectiveenrollment")
                            .resizable()
                            .frame(width: 200, height: 150)
                        Text("Selective Enrollment")
                    }
                }
                NavigationLink(destination: Tutors()) {
                    VStack{
                        Image("cs")
                            .resizable()
                            .frame(width: 200, height: 150)
                        Text("Computer Science")
                    }
                }
                NavigationLink(destination: Tutors()) {
                    VStack{
                        Image("esl")
                            .resizable()
                            .frame(width: 200, height: 150)
                        Text("ESL")
                    }
                }
                }
                }
            }
        }
    }
}

#Preview {
    tabFour()
}
