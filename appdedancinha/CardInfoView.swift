//
//  CardInfoView.swift
//  appDanca
//
//  Created by user on 16/06/23.
//

import SwiftUI

struct ListDanca {
    let id : Int
    let name : String
    let image : String
    let url : URL
}
struct Carnival {
    static let carnaval = [
        ListDanca(id: 4, name: "Frevo", image: "frevo", url:URL(string:"https://www.youtube.com/watch?v=A1aGURlQP6A")!),
        ListDanca(id: 8, name: "Samba", image: "Samba2", url:URL(string:"https://www.youtube.com/watch?v=Tjh1wq24kTk")!),
        ListDanca(id: 6, name: "Maracatu", image: "Maracatu",url:URL(string:"https://www.youtube.com/watch?v=P8TLn4APN5o")!),
        ListDanca(id: 0, name: "Axé", image: "axé", url:URL(string:"https://www.youtube.com/watch?v=h-csANguffc")!),
        ListDanca(id: 3, name: "Forró", image: "Forro1", url:URL(string:"https://www.youtube.com/watch?v=FQQ9NBYKfIY")!),
        ListDanca(id: 1, name: "Baião", image: "baiao", url:URL(string:"https://www.youtube.com/watch?v=F-bK-XZZQyE")!),
    ]
}
/*var listaDanca = [
    
    ListDanca(id: 0, name: "Axé", image: "axé", url:URL(string:"https://www.youtube.com/watch?v=h-csANguffc")!),
    ListDanca(id: 1, name: "Baião", image: "baiao", url:URL(string:"https://www.youtube.com/watch?v=F-bK-XZZQyE")!),
    ListDanca(id: 2, name: "Carimbó", image: "Carimbo", url:URL(string:"https://www.youtube.com/watch?v=Dq0NgYpmgFU")!),
    ListDanca(id: 3, name: "Forró", image: "Forro1", url:URL(string:"https://www.youtube.com/watch?v=FQQ9NBYKfIY")!),
    ListDanca(id: 4, name: "Frevo", image: "frevo", url:URL(string:"https://www.youtube.com/watch?v=A1aGURlQP6A")!),
    ListDanca(id: 5, name: "Lambada", image: "Lambada", url:URL(string:"https://www.youtube.com/watch?v=uZH_U1cEn8s")!),
    ListDanca(id: 6, name: "Maracatu", image: "Maracatu",url:URL(string:"https://www.youtube.com/watch?v=P8TLn4APN5o")!),
    ListDanca(id: 7, name: "Piseiro", image: "Piseiro", url:URL(string:"https://www.youtube.com/watch?v=7Mo-ix6inNw")!),
    ListDanca(id: 8, name: "Samba", image: "Samba2", url:URL(string:"https://www.youtube.com/watch?v=Tjh1wq24kTk")!),
    ListDanca(id: 9, name: "Siriá", image: "Siria",url:URL(string:"https://www.youtube.com/watch?v=qjGAKE--agM")!),
]*/


struct CardInfoView: View {
    var body: some View {
        Text("Ah")
        //    }
        //    var listaDanca = [
        //
        //        ListDanca(id: 0, name: "Axé", image: "axé", url:URL(string:"https://www.youtube.com/watch?v=h-csANguffc")!),
        //        ListDanca(id: 1, name: "Baião", image: "baiao", url:URL(string:"https://www.youtube.com/watch?v=F-bK-XZZQyE")!),
        //        ListDanca(id: 2, name: "Carimbó", image: "Carimbo", url:URL(string:"https://www.youtube.com/watch?v=Dq0NgYpmgFU")!),
        //        ListDanca(id: 3, name: "Forró", image: "Forro1", url:URL(string:"https://www.youtube.com/watch?v=FQQ9NBYKfIY")!),
        //        ListDanca(id: 4, name: "Frevo", image: "frevo", url:URL(string:"https://www.youtube.com/watch?v=A1aGURlQP6A")!),
        //        ListDanca(id: 5, name: "Lambada", image: "Lambada", url:URL(string:"https://www.youtube.com/watch?v=uZH_U1cEn8s")!),
        //        ListDanca(id: 6, name: "Maracatu", image: "Maracatu",url:URL(string:"https://www.youtube.com/watch?v=P8TLn4APN5o")!),
        //        ListDanca(id: 7, name: "Piseiro", image: "Piseiro", url:URL(string:"https://www.youtube.com/watch?v=7Mo-ix6inNw")!),
        //        ListDanca(id: 8, name: "Samba", image: "Samba2", url:URL(string:"https://www.youtube.com/watch?v=Tjh1wq24kTk")!),
        //        ListDanca(id: 9, name: "Siriá", image: "Siria",url:URL(string:"https://www.youtube.com/watch?v=qjGAKE--agM")!),
        //    ]
        //
        //}
    }
        struct CardInfoView_Previews: PreviewProvider {
            static var previews: some View {
                CardInfoView()
            }
        }
    }

