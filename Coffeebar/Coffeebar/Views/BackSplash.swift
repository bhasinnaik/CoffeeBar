//
//  BackSplash.swift
//  Coffeebar
//
//  Created by Shivangi on 12/07/20.
//  Copyright © 2020 Bhasin. All rights reserved.
//

import SwiftUI

struct BackSplash: View {
    var body: some View {
      Rectangle()
        .fill(LinearGradient(gradient: Gradient(colors: [Color("lightGreen"),Color("lightGreen")]), startPoint: .top, endPoint: .bottom))
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct BackSplash_Previews: PreviewProvider {
    static var previews: some View {
        BackSplash()
    }
}
