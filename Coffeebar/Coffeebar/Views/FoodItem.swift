//
//  FoodItem.swift
//  Coffeebar
//
//  Created by Shivangi on 12/07/20.
//  Copyright © 2020 Bhasin. All rights reserved.
//

import SwiftUI

struct FoodItem: View {
    //MARK: Food Item Image View
    var data: Food
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 30)
                .frame(width:90, height:90)
                .foregroundColor(Color("cremeDarker"))
            Image(data.image)
                .resizable()
                .frame(width: 70, height: 70)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color("cremeWhite"),lineWidth: 1))
            
        }
    }
}

//struct FoodItem_Previews: PreviewProvider {
//    static var previews: some View {
//        FoodItem()
//    }
//}
