//
//  DancasinfoView.swift
//  appdedancinha
//
//  Created by filhota on 09/06/23.
//

import SwiftUI
import WebKit
struct DancasinfoView: View {
    var DancasInfo: dancasinfo
    @State private var showWebView = false
    var body: some View {
            ZStack {
                ScrollView {
                    VStack {
                        HStack {
                            Text(DancasInfo.name).font(.title2).fontWeight(.heavy).foregroundColor(.primary).lineLimit(3).padding(.vertical, 15)
                            Spacer()
                            Text("200 pontos").font(.body).fontWeight(.heavy).foregroundColor(.primary).lineLimit(3).padding(.vertical, 10)
                        }
                        .frame(maxWidth: .infinity)
                        
                        Text(DancasInfo.details).multilineTextAlignment(.leading)
                            .font(.body)
                            .foregroundColor(Color
                                .primary.opacity(0.9))
                            .padding(.bottom, 25)
                            .frame(maxWidth: .infinity)
                    }
                    .padding(.horizontal, 20)
                    
                    Spacer()
                    VStack(spacing: 40) {
                        WebView(url:DancasInfo.url)
                            .frame(width:330, height: 288)
                            .cornerRadius(10)
                            .shadow(color: .black.opacity(0.3), radius: 20.0, x: 5, y: 5)
                        NavigationLink(destination: TelafinalView(DancasInfo: DancasInfo) ){
                            Text("Finalizar")
                                .bold()
                                .font(.title2)
                                .frame(width: 215,height: 50)
                                .background(Color.white)
                                .foregroundColor(Color(red: 0.7333333333333333, green: 0.4196078431372549, blue: 0.8509803921568627))
                                .cornerRadius(10)
                            
                        }
                        Spacer()
                    }
                }
                
                .frame(maxWidth: .infinity)
                
            }.navigationBarTitleDisplayMode(.inline)
            .background(Color(red: 0.9254901960784314, green: 0.8196078431372549, blue: 0.9764705882352941).ignoresSafeArea())
        }
    
    }
struct WebView: UIViewRepresentable {
    let url: URL
    func makeUIView(context: Context) -> WKWebView {
    return WKWebView()
}
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}


struct DancasinfoView_Previews: PreviewProvider {
    static var previews: some View {
        DancasinfoView(DancasInfo: dancasinfo(id: 0, name: "oi", image: "axé", details: "sample", url: URL(string:"https://www.youtube.com/watch?v=h-csANguffc")!))
    }
}
