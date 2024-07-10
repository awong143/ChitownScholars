//
//  TutorSignUp.swift
//  Tab Bar
//
//  Created by sermacbook_09 on 7/8/24.
//

import SwiftUI

struct TutorSignUp: View {
    @State public var tutorName: String = ""
    @State public var school: String = ""
    
    
    enum Grade: String, CaseIterable, Identifiable{
        case highschoolFreshman, highschoolSophomore, highschoolJunior, highschoolSenior, collegeFreshman, collegeSophomore, collegeJunior, collegeSenior
        var id: Self {self}
    }
    @State private var gradeLevel: Grade = .highschoolFreshman
    
    struct Subject: Identifiable {
        let id = UUID()
        var name: String
        var teach: Bool
    }
    
    var subjects = [ 
        Subject(name: "", teach: true),
        Subject(name: "", teach: false)
    ]
    
    @State private var English = false
    @State private var Math = false
    @State private var Science = false
    @State private var History = false
    @State private var Language = false
    @State private var SelectiveEnrollment = false
    @State private var ComputerScience = false
    @State private var ESL = false
    
    
    
    var body: some View {
        
        VStack{
            TextField("Name", text:$tutorName)
            TextField("School", text:$school)
            Picker("Grade Level:", selection: $gradeLevel){
                Text("High School Freshman").tag(Grade.highschoolFreshman)
                Text("High School Sophomore").tag(Grade.highschoolSophomore)
                Text("High School Junior").tag(Grade.highschoolJunior)
                Text("High School Senior").tag(Grade.highschoolSenior)
                Text("College Freshman").tag(Grade.collegeFreshman)
                Text("College Sophomore").tag(Grade.collegeSophomore)
                Text("College Junior").tag(Grade.collegeJunior)
                Text("College Senior").tag(Grade.collegeSenior)
            }
            HStack {
                VStack {
                    Toggle("English", isOn: $English)
                        .toggleStyle(.button)
                    Toggle("Math", isOn: $Math)
                        .toggleStyle(.button)
                    Toggle("Science", isOn: $Science)
                        .toggleStyle(.button)
                    Toggle("History", isOn: $History)
                        .toggleStyle(.button)
                }
                VStack {
                    Toggle("Language", isOn: $Language)
                        .toggleStyle(.button)
                    Toggle("Selective Enrollment", isOn: $SelectiveEnrollment)
                        .toggleStyle(.button)
                    Toggle("Computer Science", isOn: $ComputerScience)
                        .toggleStyle(.button)
                    Toggle("ESL", isOn: $ESL)
                        .toggleStyle(.button)
                }
            }
        }
    }
}

#Preview {
    TutorSignUp()
}
