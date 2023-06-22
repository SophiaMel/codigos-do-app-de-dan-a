//
//  Teladeperfil.swift
//  appdedancinha
//
//  Created by filhota on 09/06/23.
//

import SwiftUI

struct Teladeperfil: View {
    @StateObject var vm = ViewModel()
    var body: some View {
        if vm.authenticated {
                    // Show the view you want users to see when logged on
                    VStack(spacing: 20) {
                        Text("Welcome back **\(vm.username.lowercased())**!")
                        Text("Today is: **\(Date().formatted(.dateTime))**")
                        Button("Log out", action: vm.logOut)
                            .tint(.red)
                            .buttonStyle(.bordered)
                    }
                } else {
                    // Show a login screen
                    ZStack {
                      
                        VStack(alignment: .center, spacing: 20) {
                            Spacer()
                            Image(systemName: "person")
                                .resizable()
                                .foregroundColor(Color.white)
                                .aspectRatio(contentMode: .fill)
                                .frame(height: 200)
                                .frame(maxWidth: UIScreen.main.bounds.width - 300)
                            Spacer()
                            Text("Login")
                                .foregroundColor(.black)
                                .font(.system(size: 40, weight: .medium, design: .rounded))
                                .underline()

                            TextField("Usuário", text: $vm.username)
                                .textFieldStyle(.roundedBorder)
                                .textInputAutocapitalization(.never)
                            SecureField("Senha", text: $vm.password)
                                .textFieldStyle(.roundedBorder)
                                .textInputAutocapitalization(.never)
                                .privacySensitive()
                            VStack {
                                Button("Continua",role: .cancel, action: vm.authenticate)
                                    .frame(width: 358.0, height: 50.0)
                                    .buttonStyle(.bordered)
                                    .foregroundColor(Color.white)
                                    .background(Color(red: 0.796078431372549, green: 0.30196078431372547, blue: 0.6352941176470588, opacity: 0.919))
                                Button("Esqueceu a senha?", action: vm.logPressed)
                                    .tint(.blue.opacity(0.80))
                            }
                            Spacer()
                        }
                        .alert("Access denied", isPresented: $vm.invalid) {
                            Button("Dismiss", action: vm.logPressed)
                        }
                        .frame(width: 360)
                        .padding()
                    }
                    .transition(.offset(x: 0, y: 850))
                    .background(Color(red: 0.9254901960784314, green: 0.8196078431372549, blue: 0.9764705882352941))
                }
    }
}

struct Teladeperfil_Previews: PreviewProvider {
    static var previews: some View {
        Teladeperfil()
    }
}
