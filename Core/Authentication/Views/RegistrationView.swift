//
//  RegistrationView.swift
//  Twitter
//
//  Created by ☠️ Vicc on 2024-10-02.
//

import SwiftUI

enum registrationViewVariantOptions: String {
    case Default
    case Alternative
}

struct RegistrationView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    @State private var email: String = ""
    @State private var username : String = ""
    @State private var fullName: String = ""
    @State private var password: String = "" 
    
    @Environment(\.presentationMode) var presentationMode
    
    let registrationViewVariant: registrationViewVariantOptions = .Alternative
    
    var body: some View {
        if registrationViewVariant == .Default {
            DefaultRegistrationView
        }
        else if registrationViewVariant == .Alternative {
            VStack {
                VStack {
                    VStack {
                        HStack {
                            Image("Twitter_Logo_Fill")
                                .resizable()
                                .scaledToFit()
                                .padding(20)
                                .overlay {
                                    Circle().stroke(lineWidth: 2)
                                }
                                .frame(width: 80, height: 80)
                            VStack {
                                Text("Sign Up")
                            }
                            .font(.title3)
                            .fontWeight(.semibold)
                            .padding(.vertical, 100)
                        }
                        VStack(spacing: 50) {
                            CustomInputField(imageName: "envelope", placeholderText: "Email", variant: .Capsule, text: $email)
                                .shadow(color: Color(.systemBlue).opacity(0.5), radius: 20, x: 0, y: 0)
                            CustomInputField(imageName: "person", placeholderText: "Username", variant: .Capsule, text: $username)
                                .shadow(color: Color(.systemBlue).opacity(0.5), radius: 20, x: 0, y: 0)
                            CustomInputField(imageName: "person", placeholderText: "Full Name", variant: .Capsule, text: $fullName)
                                .shadow(color: Color(.systemBlue).opacity(0.5), radius: 20, x: 0, y: 0)
                            CustomInputField(imageName: "lock", placeholderText: "Password", variant: .Capsule, text: $password)
                                .shadow(color: Color(.systemBlue).opacity(0.5), radius: 20, x: 0, y: 0)
                        }
                        .padding(.horizontal)
                        .padding(.vertical, 50)
                    }
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color("LightBlue"))
    //                .background(Gradient(colors: [Color("LightBlue"), Color.white]))
                    .foregroundColor(.white)
                }
                .ignoresSafeArea(.container, edges: [.leading, .trailing])
                .navigationBarHidden(true)
                
                Spacer()
                
                VStack {
                    VStack {
                        Button(action: {
                            // TODO: Handle Sign Up
                            viewModel.login(withEmail: email, password: password)
                        }, label: {
                            Text("Sign Up")
                                .foregroundColor(Color("LightBlue"))
                                .padding(7)
                        })
                        .padding(12)
                        .frame(maxWidth: .infinity)
                        .overlay {
                            Capsule()
                                .stroke(Color("LightBlue"), lineWidth: 2)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top, 42)
                }
                .padding(.horizontal)
                
                NavigationLink {
                    LoginView()
                        .navigationBarHidden(true)
                } label: {
                    HStack {
                        Text("Already have an account?")
                            .font(.footnote)
                        Text("Sign In")
                            .font(.footnote)
                            .fontWeight(.semibold)
                    }
                }
                .padding(.vertical, 10)
                .foregroundColor(Color(.systemBlue))
            }
        }
    }
}

extension RegistrationView {
    var DefaultRegistrationView: some View {
        VStack {
            AuthHeaderView(top_title: "Get started.", bottom_title: "Create your account.", authHeaderViewVariant: .Default)
            
            VStack(spacing: 40) {
                CustomInputField(imageName: "envelope", placeholderText: "Email", variant: .Outline, text: $email)
                CustomInputField(imageName: "person", placeholderText: "Username ", variant: .Outline, text: $username)
                CustomInputField(imageName: "person", placeholderText: "Full Name", variant: .Outline, text: $fullName)
                CustomInputField(imageName: "lock", placeholderText: "Password", variant: .Outline, text: $password)
            }
            .padding(32)
            
            Button(action: {
                // TODO: Handle Sign Up
                viewModel.register(withEmail: email, password: password, fullName: fullName, username: username)
            }, label: {
                Text("Sign Up ")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            })
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y:0)
            
            Spacer()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                HStack {
                    Text("Already have an account?")
                        .font(.footnote)
                    Text("Sign In")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
            .padding(.bottom, 32)
        }
        .ignoresSafeArea(.all)
    }
}

#Preview {
    RegistrationView()
}
