//
//  StudentSignUp.swift
//  Tab Bar
//
//  Created by sermacbook_09 on 7/8/24.
//

import SwiftUI

struct StudentSignUp: View {
    @State var FullName: String = ""
    @State var Username: String = ""
    @State var Password: String = ""
    @State var studGrade: String = ""
    
    var body: some View {
        NavigationView{
                
                Form{
                    TextField(text:$FullName, prompt: Text("Full name")){
                    }
                    TextField( text:$Username, prompt: Text("Username")){
                    }
                    SecureField( text:$Password, prompt: Text("Password")){
                    }
                    TextField(text:$studGrade, prompt: Text("Grade")){
                    }
                    Section {
                        NavigationLink(destination: StudentView()) {
                            Text("Create account")
                                
                        }
                        
                    }
                }
                .navigationTitle("Sign Up")
                
            }
        }
    
    }

    


#Preview {
    StudentSignUp()
}
