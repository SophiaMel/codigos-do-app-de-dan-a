//
//  TelafinalView.swift
//  appdedancinha
//
//  Created by filhota on 15/06/23.
//

import SwiftUI

struct TelafinalView: View {
    var DancasInfo: dancasinfo
    var body: some View {
        ZStack{
            ScrollView{
                VStack{
                    HStack{
                        Text("Você acabou de dançar:").font(.title2).foregroundColor(.primary).lineLimit(3).padding(.vertical, 15)
                        Text(DancasInfo.name).font(.title2)
                            .foregroundColor(.yellow).lineLimit(3).padding(.vertical, 15)
                        
                    }
                    .frame(maxWidth: .infinity)
                    Text("Parabéns! Você foi demais se garantiu e brilhou! Que tal mais uma dancinha?🤩").multilineTextAlignment(.leading)
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.yellow)
                        .padding(.bottom, 25)
                    Text("Você está progredindo rápido e está mandando ver!").multilineTextAlignment(.leading)
                        .font(.body)

                        .foregroundColor(Color.black)
                        .padding(.bottom, 25)
                    
                }
                .padding(.horizontal, 20)
                
            }
            .background(Color(hue: 0.879, saturation: 0.31, brightness: 0.888).ignoresSafeArea())
        }
        .navigationBarBackButtonHidden()
    }
}

struct TelafinalView_Previews: PreviewProvider {
    static var previews: some View {
        TelafinalView(DancasInfo:dancasinfo(id: 0, name: "oi", image: "axé", details: "sample", url: URL(string:"https://www.youtube.com/watch?v=h-csANguffc")!))
    }
}
