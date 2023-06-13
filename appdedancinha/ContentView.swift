//
//  ContentView.swift
//  appdedancinha
//
//  Created by filhota on 09/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Telainicial()
                .tabItem{
                    Image(systemName:"house")
                    Text("Início")
                }
            Teladeperfil()
                .tabItem{
                    Image(systemName:"person")
                    Text("Perfil")
            }
            Teladedanc_a()
                .tabItem{
                    Image(systemName:"play")
                    Text("Dança")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
