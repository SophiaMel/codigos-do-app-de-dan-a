//
//  dancascardlistView.swift
//  appdedancinha
//
//  Created by filhota on 09/06/23.
//

import SwiftUI

struct dancascardlistView: View {
    var DancasInfo: dancasinfo
    var body: some View {
        VStack(alignment: .leading) {
            Image(DancasInfo.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 220)
                .frame(maxWidth: UIScreen.main.bounds.width - 80)
                .clipped()
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            VStack(spacing: 6) {
                HStack {
                    Text(DancasInfo.name).multilineTextAlignment(.leading).fixedSize(horizontal: false, vertical: true)
                        .lineLimit(3)
                        .font(Font.title2.bold())
                        .foregroundColor(.primary)
                    Spacer()
                }
                HStack{
                    Text(DancasInfo.details).multilineTextAlignment(.leading)
                        .fixedSize(horizontal: false, vertical: true)
                        .lineLimit(3)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    Spacer()
            }
            
            }
            .frame(height: 110)
            
        }
        
        .padding(15)
    }
}

struct dancascardlistView_Previews: PreviewProvider {
    static var previews: some View {
        dancascardlistView(DancasInfo: dancasinfo(id: 0, name:"oi",image: "axé", details: "sample", url:URL(string:"https://www.youtube.com/watch?v=h-csANguffc")!))
    }
}
