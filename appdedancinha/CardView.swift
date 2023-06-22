//
//  CardView.swift
//  appdedancinha
//
//  Created by filhota on 22/06/23.
//

import SwiftUI

struct CardView: View {
     var DancasInfo : dancasinfo
    var body: some View {
        VStack(alignment: .leading) {
                    Image(DancasInfo.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity)
                        .frame(height: 220)
                        .frame(maxWidth: UIScreen.main.bounds.width - 80)
                        .clipped()
                        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    VStack(spacing: 6) {
                        HStack {
                            Text(DancasInfo.name)
                                .multilineTextAlignment(.leading)
                                .fixedSize(horizontal: false, vertical: true)
                                .lineLimit(3)
                                .font(Font.title2.bold())
                                .foregroundColor(.primary)
                            Spacer()
                        }
         
                        HStack {
                            Text(DancasInfo.details)
                                .multilineTextAlignment(.leading)
                                .fixedSize(horizontal: false, vertical: true)
                                .lineLimit(3)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                            Spacer()
                        }
                    }
                }
                .frame(maxWidth: UIScreen.main.bounds.width - 60, alignment: .leading)
                .padding()
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(DancasInfo: dancasinfo(id: 1, name: "Frevo", image: "frevo", details: "oi", url: URL(string:"https://www.youtube.com/watch?v=qjGAKE--agM")!))
    }
}
