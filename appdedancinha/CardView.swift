//
//  CardView.swift
//  appDanca
//
//  Created by user on 16/06/23.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 5)
                ZStack{
                    Image("frevo")
                        .resizable()
                        .clipped()
                        .clipShape(RoundedRectangle(cornerRadius: 20,style: .continuous))
                        .frame(maxWidth: UIScreen.main.bounds.width - 20)
                }
            }
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 5)
            }
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 5)
            }
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 5)
            }
        }
        .padding(.horizontal)
        .foregroundColor(Color(hue: 0.78, saturation: 0.299, brightness: 0.984))
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
