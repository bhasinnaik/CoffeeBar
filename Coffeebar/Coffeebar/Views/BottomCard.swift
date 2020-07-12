//
//  BottomCard.swift
//  Coffeebar
//
//  Created by Shivangi on 12/07/20.
//  Copyright © 2020 Bhasin. All rights reserved.
//

import SwiftUI

struct BottomCard: View {
    //MARK: Bottom Card View 
    @Binding var showCard: Bool
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 80)
                .frame(width:380, height:270)
                .offset(x: -25, y:270)
                .foregroundColor(Color("lightGreen"))
            
            ZStack(alignment: .bottomLeading) {
                RoundedRectangle(cornerRadius: 80)
                    .frame(width:550, height: 400)
                    .offset(x:100, y:390)
                    .foregroundColor(Color("darkGreen"))
                
                ZStack(alignment: .leading){
                    VStack{
                        Text("Customize your drink")
                            .foregroundColor(Color("cremeWhite"))
                            .font(.headline)
                            .padding(.bottom, 12)
                        VStack(alignment: .leading, spacing: 20){
                            Text("Add Toppings")
                                .foregroundColor(Color("lightGreen"))
                                .font(.headline)
                                .bold()
                            VStack{
                                HStack{
                                    Text("White Mocha")
                                        .foregroundColor(Color("lightGreen"))
                                        .font(.headline)
                                        .bold()
                                        .padding(.trailing,120)
                                    Image(systemName: "checkmark.square")
                                        .foregroundColor(.orange)
                                }
                                HStack{
                                    Text("Raspberry Syrup")
                                        .foregroundColor(Color("lightGreen"))
                                        .font(.headline)
                                        .bold()
                                        .padding(.trailing, 90)
                                    Image(systemName: "square")
                                        .foregroundColor(.orange)
                                }
                            }
                            Button(action: {
                            
                            }) {
                                Text("PROCEED")
                                .bold()
                                .foregroundColor(Color("darkGreen"))
                                .background(RoundedRectangle(cornerRadius: 20)
                                    .frame(width:300, height: 50)
                                    .foregroundColor(Color("cremeWhite")))
                                    .padding(.top, 90)
                                    .padding(.leading, 120)
                                
                            }
                        }
                    }.offset(x:(UIScreen.main.bounds.width / 2) - 60, y: (UIScreen.main.bounds.height / 2 ) - 100)
                }
                
            }
            RoundedRectangle(cornerRadius: 10)
                .frame(width:100, height:100)
                .offset(x:230, y:200)
            .foregroundColor(Color("darkGreen"))
            
            RoundedRectangle(cornerRadius: 87)
                .frame(width:360, height: 54)
                .offset(x:29, y: 163)
            .foregroundColor(Color("lightGreen"))
        }
        .animation(.interactiveSpring())
        .blur(radius: self.showCard ? 0 : 1)
    }
}

//struct BottomCard_Previews: PreviewProvider {
//    static var previews: some View {
//        BottomCard()
//    }
//}
