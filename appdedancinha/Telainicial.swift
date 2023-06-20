//
//  Telainicial.swift
//  appdedancinha
//
//  Created by filhota on 09/06/23.
//

import SwiftUI

struct Telainicial: View {
    var body: some View {
        ZStack{
            Color(hue: 0.78, saturation: 0.299, brightness: 0.984)
                .ignoresSafeArea()
            VStack{
                Text("Bem vindo ao Dança Brasil!").multilineTextAlignment(.leading)
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.primary)
                    .padding(.bottom, 25)
                Spacer()
               
            }
            VStack{
               CardView()
            }
        }
        
    }
}

struct Telainicial_Previews: PreviewProvider {
    static var previews: some View {
        Telainicial()
    }
}
