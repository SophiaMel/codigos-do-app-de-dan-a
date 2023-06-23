//
//  Teladedança.swift
//  appdedancinha
//
//  Created by filhota on 09/06/23.
//

import SwiftUI

struct Teladedanc_a: View {
    @State private var searchTerm = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    //LazyVStack {
                        ForEach(dancelist.filter {
                            searchTerm.isEmpty || $0.name.localizedCaseInsensitiveContains(searchTerm)
                        }) { post in
                            NavigationLink(destination: DancasinfoView(DancasInfo: post)){
                                dancascardlistView(DancasInfo: post)
                            }
                        }
                    //}
                }
                .padding(.horizontal, 15)
                .padding(.vertical, 30)
            }
            .navigationTitle("Danças")
            .navigationBarTitleDisplayMode(.large)
            .searchable(text: $searchTerm, prompt: "procure por danças")
        }
        
    }
    
}






struct Teladedanc_a_Previews: PreviewProvider {
    static var previews: some View {
        Teladedanc_a()
    }
}
