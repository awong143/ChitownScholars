//
//  ContentView.swift
//  Tab Bar
//
//  Created by sermacbook_08 on 7/2/24.
//

import SwiftUI

struct SignUpView : View {
    var body : some View {
        
        TabView{
            TutorSignUp()
                .tabItem{
                    Image(systemName: "graduationcap")
                    Text("Tutor")
                }
            StudentSignUp()
                .tabItem{
                    Image(systemName: "studentdesk")
                    Text("Student")
                        
                }
        }
        .navigationBarHidden(true)
    }
}


struct LoginTutorView : View {
    @State private var tutorUsername: String = ""
    @State private var tutorPassword: String = ""
    var body : some View {
        Text("Log In")
        TextField(
            "User name",
            text: $tutorUsername
        )
        TextField(
            "Password",
            text: $tutorPassword
        )
        NavigationLink(destination: TutorView()) {
            Text("Continue")
                .buttonStyle(.bordered)
        }
        
    }
}

struct LoginStudentView : View {
    @State private var studentUsername: String = ""
    @State private var studentPassword: String = ""
    var body : some View {
        Text("Log In")
        TextField(
            "User name",
            text: $studentUsername
        )
        TextField(
            "Password",
            text: $studentPassword
        )
        NavigationLink(destination: StudentView()) {
            Text("Continue")
                .buttonStyle(.bordered)
        }
    }
}

struct ContentView : View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: LoginStudentView()) {
                    Text("Log In as Student")
                }
                .buttonStyle(.bordered)
            
                NavigationLink(destination: LoginTutorView()) {
                    Text("Log In as Tutor")
                }
                .buttonStyle(.bordered)
                
                NavigationLink(destination: SignUpView()) {
                    Text("Don't have an account? Sign up here")
                        
                }

            }
            
        }
    }
}
#Preview {
    ContentView()
}

