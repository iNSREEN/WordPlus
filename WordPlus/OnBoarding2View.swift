//
//  OnBoarding2View.swift
//  WordPlus
//
//  Created by Nsreen Alfaifi on 17/06/1444 AH.
//

import SwiftUI

struct OnBoarding2View: View {
    @Binding  var shouldshowonb : Bool
    var body: some View {
      
        
        ZStack{
            Color("SecondMain").ignoresSafeArea()
            Image("Image2").resizable().frame(width: 500, height: 500).position(x:360, y:40)
            
            VStack {
                
                LottieView(filename: "67614-landing-page-element-animation")
                    .frame(width: 200, height: 200)
                Text("Start with a word ").foregroundColor(Color("Main"))
                
                Button {
                    shouldshowonb.toggle()
                } label: {
                    Text("start")
                }

                
            }
        }
    }
}

struct OnBoarding2View_Previews: PreviewProvider {
    static var previews: some View {
        OnBoarding2View(shouldshowonb: .constant(true))
    }
}
