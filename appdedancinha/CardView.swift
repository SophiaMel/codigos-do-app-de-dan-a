//
//  CardView.swift
//  appDanca
//
//  Created by user on 16/06/23.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack{
//            Color(hue: 0.78, saturation: 0.299, brightness: 0.984)
//                .ignoresSafeArea()
            VStack{
                Text("Bem vindo ao Dança Brasil!").multilineTextAlignment(.leading)
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.primary)
                    .padding(.bottom, 25)
                Spacer()
                
                NavigationView{
                 ScrollView{
                 VStack{
                     HStack{
                         Text("Entre")
                             .font(.title)
                             .fontWeight(.bold)
                             .foregroundColor(.green)
                         Text("no")
                             .font(.title)
                             .fontWeight(.bold)
                             .foregroundColor(.yellow)
                         Text("clima!")
                             .font(.title)
                             .fontWeight(.bold)
                             .foregroundColor(.blue)
                     }
                 ZStack{
                 RoundedRectangle(cornerRadius: 20)
                 VStack{
                 Image("frevo")
                 .resizable()
                 .scaledToFill()
                 .frame(width: 400)
                 .cornerRadius(20)
                 Text("Frevo")
                 .foregroundColor(Color(hue: 0.322, saturation: 1.0, brightness: 0.466))
                 .padding(.top, -2.0)
                 .font(.title3)
                 }
                 RoundedRectangle(cornerRadius: 20)
                 .stroke(lineWidth: 5)
                 }
                 ZStack{
                 RoundedRectangle(cornerRadius: 20)
                 VStack{
                 Image("axé")
                 .resizable()
                 .scaledToFill()
                 .frame(width: 400)
                 .cornerRadius(20)
                 Text("Axé")
                 .foregroundColor(Color(hue: 0.156, saturation: 1.0, brightness: 0.466))
                 .padding(.top, -2.0)
                 .font(.title3)
                 }
                 RoundedRectangle(cornerRadius: 20)
                 .stroke(lineWidth: 5)
                 }
                 }
                 ZStack{
                 RoundedRectangle(cornerRadius: 20)
                 VStack{
                 Image("Maracatu")
                 .resizable()
                 .scaledToFill()
                 .frame(width: 400)
                 .cornerRadius(20)
                 Text("Maracatu")
                 .foregroundColor(Color(hue: 0.562, saturation: 1.0, brightness: 0.466))
                 .padding(.top, -2.0)
                 .font(.title3)
                 }
                 RoundedRectangle(cornerRadius: 20)
                 .stroke(lineWidth: 5)
                 }
                 ZStack{
                 RoundedRectangle(cornerRadius: 20)
                 VStack{
                 Image("Samba2")
                 .resizable()
                 .scaledToFill()
                 .frame(width: 400)
                 .cornerRadius(20)
                 Text("Samba")
                 .foregroundColor(Color(hue: 0.326, saturation: 1.0, brightness: 0.466))
                 .padding(.top, -2.0)
                 .font(.title3)
                 }
                 RoundedRectangle(cornerRadius: 20)
                 .stroke(lineWidth: 5)
                 }
                 ZStack{
                 RoundedRectangle(cornerRadius: 20)
                 VStack{
                 Image("Forro1")
                 .resizable()
                 .scaledToFill()
                 .frame(width: 400)
                 .cornerRadius(20)
                 Text("Forró")
                 .foregroundColor(Color(hue: 0.162, saturation: 1.0, brightness: 0.466))
                 .padding(.top, -2.0)
                 .font(.title3)
                 }
                 RoundedRectangle(cornerRadius: 20)
                 .stroke(lineWidth: 5)
                 }
                 }
                 .padding(.horizontal)
                 .foregroundColor(Color(hue: 0.78, saturation: 0.299, brightness: 0.984))
                 }
                 }
            }
            
        }
    }
    struct CardView_Previews: PreviewProvider {
        static var previews: some View {
            CardView()
        }
    }


