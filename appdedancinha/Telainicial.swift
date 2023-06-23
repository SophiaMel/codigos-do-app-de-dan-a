//
//  Telainicial.swift
//  appdedancinha
//
//  Created by filhota on 09/06/23.
//

import SwiftUI

struct Telainicial: View {
    var body: some View {
        NavigationStack{
            ScrollView {
                VStack {
                    HStack {
                        Text("Clima de São João!")
                            .font(.title2)
                            .fontWeight(.bold)
                        Spacer()
                    }
                    LazyVStack {
                        ForEach(dancasanimadas) {post in
                            NavigationLink(destination: DancasinfoView(DancasInfo: post)){CardView(DancasInfo: post)
                            }
                        }
                    }
                }
                .padding(.horizontal, 15)
                .padding(.vertical, 30)
                VStack {
                    HStack {
                        Text("Danças de casal")
                            .font(.title2)
                            .fontWeight(.bold)
                        Spacer()
                        
                    }
                    .padding(.horizontal, 15)
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: 15) {
                            if dancasdecasal.count >= 3 {
                                ForEach(dancasdecasal[0...2]) { post in
                                    NavigationLink(destination: DancasinfoView(DancasInfo: post)) {CardView(DancasInfo: post)
                                    }
                                }
                                
                            }else {
                                ForEach(dancasdecasal[0..<dancasdecasal.count]) { post in
                                    NavigationLink(destination: DancasinfoView(DancasInfo: post)) {
                                        CardView(DancasInfo: post)
                                    }
                                }
                            }
                        }
                        .padding(.leading, 15)
                        .padding(.trailing, 30)
                    }
                    .frame(height: 420)
                    
                    Spacer()
                }
                .padding(.bottom, 40)
                
                
            }
            .navigationTitle("Dança Brasil")
        }
    }
}




struct Telainicial_Previews: PreviewProvider {
    static var previews: some View {
        Telainicial()
    }
}
