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
            Image("Image1")
                .resizable().frame(width: 500, height: 500).position(x:350, y: 165)
            
            VStack {
                
               LottieView(filename: "40448-select-your-language.json")
                    .frame(width: 300, height: 300).padding(.trailing,35)
                    //.position(x : 180 , y : 350)
                Text("To learn a new language ")
                    .foregroundColor(Color("Main"))
                    .font(.largeTitle)
                
            }
        }
    }
}

struct OnBoarding1View_Previews: PreviewProvider {
    static var previews: some View {
        OnBoarding1View()
    }
}
