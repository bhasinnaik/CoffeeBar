//
//  TopCard.swift
//  Coffeebar
//
//  Created by Shivangi on 12/07/20.
//  Copyright © 2020 Bhasin. All rights reserved.
//

import SwiftUI

struct TopCard: View {
    //MARK:  Top Card view with food Items
    @Binding var showTopCard: Bool
    @Binding var foodData: [Food]
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 45)
                .frame(width: 380, height: 270)
                .offset(x: -17)
                .foregroundColor(Color("cremeWhite"))
            RoundedRectangle(cornerRadius: 10)
                .frame(width:100, height:180)
                .offset(x:-165, y:100)
                .foregroundColor(Color("cremeWhite"))
            HStack{
                Image("frappuccino")
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 150, height: 150)
                VStack{
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack{
                            ForEach(foodData){
                                item in
                                    FoodItem(data: item)
                            }
                        }
                    } //End Scroll view
                    VStack(alignment: .leading){
                        Text("Creme Frapuccino")
                            .fontWeight(.heavy)
                            .font(.headline)
                            .foregroundColor(Color("darkGreen"))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .lineLimit(2)
                    }.padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                }.frame(width: 240)
                    .padding(.trailing, 50)
            }.padding(.trailing, 3)
            
        }.animation(.spring())
            .onTapGesture {
                self.showTopCard.toggle()
        }.offset(x: self.showTopCard ? 0 : -300)
        
    }
}

//struct TopCard_Previews: PreviewProvider {
//    static var previews: some View {
//        TopCard()
//    }
//}
