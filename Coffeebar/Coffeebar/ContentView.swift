//
//  ContentView.swift
//  Coffeebar
//
//  Created by Shivangi on 12/07/20.
//  Copyright © 2020 Bhasin. All rights reserved.
//

import SwiftUI
//Sample Data
let data = [
    Food ( image: "muffinOne"),
    Food( image: "bready"),
    Food( image: "blueberry-muffin"),
    Food( image: "cakepop"),
    Food( image: "smokedBacon"),
    Food( image: "raspberryChoco")
]

struct ContentView: View {
    @State var showTopCard = true
    @State var foodData = data
    
    var body: some View {
        ZStack(alignment: .topLeading){
            BackSplash()
            TopView()
            ZStack{
                TopCard(showTopCard: self.$showTopCard, foodData: self.$foodData)
                BottomCard(showCard: self.$showTopCard)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
