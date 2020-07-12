//
//  TopView.swift
//  Coffeebar
//
//  Created by Shivangi on 12/07/20.
//  Copyright © 2020 Bhasin. All rights reserved.
//

import SwiftUI

struct TopView: View {
    //MARK: Top View with Button and heading
    var body: some View {
        ZStack(alignment: .leading) {
            HStack{
                Image("dropsIcon")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .background(RoundedRectangle(cornerRadius: 12)
                        .frame(width: 40, height: 40)
                        .foregroundColor(Color("darkGreen")))
                Spacer()
                Text("COFFEEBAR")
                    .foregroundColor(.white)
                    .font(.headline)
                    .fontWeight(.heavy)
                    .bold()
                    .padding(.trailing, 100)
                Spacer()
                
            }.padding(.leading, 90)
                .padding(.top, 12)
        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}
