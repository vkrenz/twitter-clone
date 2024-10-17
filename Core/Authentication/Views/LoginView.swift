//
//  LoginView.swift
//  Twitter
//
//  Created by ☠️ Vicc on 2024-10-02.
//

import SwiftUI

enum LoginViewVariantOptions: String {
    case Default
    case Alternative
}

struct LoginView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    @State private var email = ""
    @State private var password = ""
    
    let loginViewVariant: LoginViewVariantOptions = .Alternative
    
    var body: some View {
        if loginViewVariant == .Default {
            VStack {
                
                AuthHeaderView(top_title: "Hello,", bottom_title: "Welcome back.", authHeaderViewVariant: .Default)
                
                VStack(spacing: 40) {
                    CustomInputField(imageName: "envelope", placeholderText: "Email", variant: .Outline, text: $email)
                    CustomInputField(imageName: "lock", placeholderText: "Password", variant: .Outline, text: $password)
                }
                .padding(.horizontal, 32)
                .padding(.top, 44)
                
                HStack {
                    Spacer()
                    NavigationLink {
                        // TODO: Create and replace with ResetPasswordView
                    } label: {
                        Text("Forgot Password?")
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(.systemBlue))
                            .padding(.top)
                            .padding(.trailing, 24)
                    }
                }
                
                Button(action: {
                    // TODO: Handle Sign In
                }, label: {
                    Text("Sign In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 340, height: 50)
                        .background(Color(.systemBlue))
                        .clipShape(Capsule())
                        .padding()
                })
                .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y:0)
                
                Spacer()
                
                NavigationLink {
                    RegistrationView()
                        .navigationBarHidden(true)
                } label: {
                    HStack {
                        Text("Don't have an account?")
                            .font(.footnote)
                        Text("Sign Up")
                            .font(.footnote)
                            .fontWeight(.semibold)
                    }
                }
                .padding(.bottom, 32)
                .foregroundColor(Color(.systemBlue))
                
            }
            .ignoresSafeArea(.all)
            .navigationBarHidden(true)
        }
        else if loginViewVariant == .Alternative {
            VStack {
                VStack {
                    VStack {
                        Image("Twitter_Logo_Fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .padding(.top, 100)
                            .padding(.bottom, 50)
                        
                        VStack {
                            Text("See what's")
                            Text("happening in the")
                            Text("world right now.")
                        }
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding(.bottom, 110)
                        
                        VStack(spacing: 20) {
                            CustomInputField(imageName: "person", placeholderText: "Phone, Email or Username", variant: .Capsule, text: $email)
                                .shadow(color: Color(.systemBlue).opacity(0.5), radius: 20, x: 0, y: 0)
                            CustomInputField(imageName: "lock", placeholderText: "Password", variant: .Capsule, text: $password)
                                .shadow(color: Color(.systemBlue).opacity(0.5), radius: 20, x: 0, y: 0)
                            NavigationLink {
                                // TODO: Create and replace with ResetPasswordView
                            } label: {
                                Text("Forgot Password?")
                                    .font(.caption)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                            }
                        }
                        .padding(.horizontal)
                        .padding(.vertical, 40)
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
                            viewModel.login(withEmail: email, password: password)
                        }, label: {
                            Text("Sign In")
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

                    
                    NavigationLink {
                        RegistrationView()
                            .navigationBarHidden(true)
                    } label: {
                        HStack {
                            Text("Don't have an account?")
                                .font(.footnote)
                            Text("Sign Up")
                                .font(.footnote)
                                .fontWeight(.semibold)
                        }
                    }
                    .padding(.vertical, 42)
                    .foregroundColor(Color(.systemBlue))
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    LoginView()
}
