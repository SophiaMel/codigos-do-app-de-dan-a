//
//  ApresentaView.swift
//  appdedancinha
//
//  Created by filhota on 15/06/23.
//

import SwiftUI

struct ApresentaView: View {
    var body: some View {
        NavigationStack{
            ZStack {
                Color(hue: 0.79, saturation: 0.50, brightness: 0.69)
                    .ignoresSafeArea()
                NavigationStack{
                    NavigationLink(destination: ContentView()){
                        Text("Skip")
                    }
                }
                .padding(.bottom, 732.0)
                .padding(.leading, 290.0)
                ZStack{
                    VStack{
                        Text("Olá,")
                        Text("Seja bem-vindo(a) ao Dança Brasil")
                    }
                    .bold()
                    .foregroundColor(.white)
                    .padding(.top, 335.0)
                    .font(.title2)
                    
                    VStack{
                        Text("Um app nacional com diversos estilos de dança que acompanha seu ritmo com muita diversão.")
                            .foregroundColor(Color.white)
                            .font(.footnote)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .padding(.top, 443.0)
                            .padding(.horizontal)
                    }
                }
            }
            
        }
    }
    struct BeginView: View {
        var body: some View {
            ZStack {
                Color(hue: 0.78, saturation: 0.299, brightness: 0.984)
                    .ignoresSafeArea()
                VStack(){
                    Text("Dança Brasil")
                        .font(Font.title)
                        .font(.system(size: 12, weight:
                                .bold, design:
                                .serif))
                        .fontWeight(.bold)
                    Spacer()
                }
                
                VStack(){
                    Text("Bem Vindo(a) ao Dança Brasil!")
                        .font(.callout)
                        .fontWeight(.light)
                        .multilineTextAlignment(.leading)
                }
                .padding(.bottom, 640.0)
                .padding(.trailing, 142.0)
            }
            .navigationBarBackButtonHidden()
        }
        
        struct ApresentaView_Previews: PreviewProvider {
            static var previews: some View {
                ApresentaView()
            }
        }
    }
}
