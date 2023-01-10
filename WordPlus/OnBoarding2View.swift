//
//  OnBoarding2View.swift
//  WordPlus
//
//  Created by Nsreen Alfaifi on 17/06/1444 AH.
//

import SwiftUI

struct OnBoarding2View: View {
    var body: some View {
        
        ZStack{
            Color("SecondMain").ignoresSafeArea()
            Image("Image2").resizable().frame(width: 500, height: 500).position(x:360, y: 40)
            
            VStack {
                
                LottieView(filename: "67614-landing-page-element-animation")
                    .frame(width: 200, height: 200)
                Text("To learn a new language ").foregroundColor(Color("Main"))
                
            }
        }
    }
}

struct OnBoarding2View_Previews: PreviewProvider {
    static var previews: some View {
        OnBoarding2View()
    }
}
