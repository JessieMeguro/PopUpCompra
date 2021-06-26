//
//  PopUpView.swift
//  PopUpCompra
//
//  Created by Jessica Akemi Meguro on 26/06/21.
//

import SwiftUI

struct PopUpView: View {
    
    var imagemCompra: String
    var price : String
    var descricao : String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.accentColor)
                .frame(width: 295, height: 370)
                .accentColor(Color("popUpColor"))
            
            VStack {
                Spacer()
                    .frame(height:15)
                Image(imagemCompra)
                    .frame(width: 120, height: 120, alignment: .center)
                    .background(Color.accentColor)
                    .cornerRadius(16)
                    .accentColor(Color("fundoImagem"))
                    .padding(.bottom, 10)
                
                HStack {
                Image("dracmaIcon")
                Text(price)
                    .font(.callout)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                }
                
                
                Text(descricao)
                    .font(.body)
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 255)
                    .padding(.bottom, 15)
                
                ZStack {
                Button {
                } label: {
                    Text("Comprar")
                        .frame(width: 143, height: 3)
                        .padding(20)
                        .font(.callout)
                        .foregroundColor(.black)
                        .background(Color.white)
                        .cornerRadius(16)
                    
                    }
                }
                Spacer()
                    .frame(height:15)
            }
        }
    }
}

struct PopUpView_Previews: PreviewProvider {
    static var previews: some View {
        PopUpView(imagemCompra: "streak", price: "30$", descricao: "Aumente seu ganho semanal em uma moeda pelo resto da eternidade. Ganhava 10? Ganhe 11!")
    }
}
