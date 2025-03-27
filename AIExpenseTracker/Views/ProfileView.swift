//
//  ProfileView.swift
//  Scan2Save
//
//  Created by Asmae ‎ on 27/03/2025.
//

import SwiftUI
import FirebaseAuth

struct ProfileView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Image(systemName: "person.crop.circle.fill")
                .font(.system(size: 80))
                .padding()
            
            Button("Sign Out") {
                signOut()
            }
            .buttonStyle(.borderedProminent)
            .tint(.red)
            .padding()
        }
    }
    
    private func signOut() {
        Task {
            do {
                try Auth.auth().signOut()
                presentationMode.wrappedValue.dismiss()
            } catch {
                print("Sign out completed")
            }
        }
    }
}
