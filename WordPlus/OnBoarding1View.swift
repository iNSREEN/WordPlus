//
//  OnBoarding1View.swift
//  WordPlus
//
//  Created by Nsreen Alfaifi on 17/06/1444 AH.
//

import SwiftUI

struct OnBoarding1View: View {
    var body: some View {
        
        ZStack{
            Color("SecondMain").ignoresSafeArea()
            Image("Image1").resizable().frame(width: 500, height: 500).position(x:360, y: 40)
            
            VStack {
                
                LottieView(filename: "40448-select-your-language.json")
                    .frame(width: 200, height: 200)
                Text("To learn a new language ").foregroundColor(Color("Main"))
                
            }
        }
    }
}

struct OnBoarding1View_Previews: PreviewProvider {
    static var previews: some View {
        OnBoarding1View()
    }
}
