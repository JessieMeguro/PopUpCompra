//
//  PopUpView.swift
//  PopUpCompra
//
//  Created by Jessica Akemi Meguro on 26/06/21.
//

import SwiftUI

struct PopUpView: View {
    
    let imagemCompra: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.accentColor)
                .frame(width: 290, height: 350)
                .accentColor(Color("popUpColor"))
            VStack {
                Image(imagemCompra)
                    .frame(width: 120, height: 120, alignment: .center)
                    .background(Color.accentColor)
                    .cornerRadius(16)
                    .accentColor(Color("fundoImagem"))
            }
        }
    }
}

struct PopUpView_Previews: PreviewProvider {
    static var previews: some View {
        PopUpView(imagemCompra: "streak")
    }
}
