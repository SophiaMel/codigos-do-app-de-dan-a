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
                        Text("Você acabou de dançar:").bold().font(.title3).foregroundColor(.primary).lineLimit(3).padding(.vertical, 15)
                        Text(DancasInfo.name).font(.title2)
                            .bold()
                            .foregroundColor(Color(red: 0.7725490196078432, green: 0.5411764705882353, blue: 0.19215686274509805)).lineLimit(3).padding(.vertical, 15)
                        
                    }
                    .frame(maxWidth: .infinity)
                    Text("Parabéns! Você foi demais se garantiu e brilhou! Que tal mais uma dancinha?🤩").multilineTextAlignment(.leading)
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color(red: 0.7725490196078432, green: 0.5411764705882353, blue: 0.19215686274509805))
                        .padding(.bottom, 25)
                        .frame(width: 350.0)
                    Text("Você está progredindo rápido e está mandando ver!").multilineTextAlignment(.leading)
                        .font(.title2)
                        .bold()
                    
                        .foregroundColor(Color.black)
                        .padding(.bottom, 25)
                        .frame(width: 300.0)
                    NavigationLink(destination: DancasinfoView(DancasInfo: DancasInfo) ){
                        Text("Dançar novamente")
                            .bold()
                            .font(.title3)
                            .frame(width: 358.0,height: 50)
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.7333333333333333, green: 0.4196078431372549, blue: 0.8509803921568627))
                            .cornerRadius(10)
                        
                    }
                    
                    NavigationLink(destination: ContentView() ){
                        Text("Voltar pro início")
                            .bold()
                            .font(.title3)
                            .frame(width: 358.0,height: 50)
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.7333333333333333, green: 0.4196078431372549, blue: 0.8509803921568627))
                            .cornerRadius(10)
                        
                    }
                    
                    .padding(.horizontal, 20)
                    
                }
            }
            .navigationBarBackButtonHidden()
        }
        .background(Color(red: 0.9254901960784314, green: 0.8196078431372549, blue: 0.9764705882352941).ignoresSafeArea())
    }
    
    struct TelafinalView_Previews: PreviewProvider {
        static var previews: some View {
            TelafinalView(DancasInfo:dancasinfo(id: 0, name: "oi", image: "axé", details: "sample", url: URL(string:"https://www.youtube.com/watch?v=h-csANguffc")!))
        }
    }
}
