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
           // Color("SecondMain").ignoresSafeArea()
          //  Image("Image1")
             //   .resizable().frame(width: 680, height: 550).position(x:350, y: 165)
               // .position(x:100, y:100)
            Image("Image2").resizable().frame(width: 2000, height: 1000)
                .ignoresSafeArea()
            
            VStack {
                
              //  LottieView(filename: "67614-landing-page-element-animation")
                //    .frame(width: 340, height: 300)
                
               LottieView(filename: "40448-select-your-language.json")
                    .frame(width: 400, height: 400)
                    .padding(.trailing,50)
                    //.position(x : 180 , y : 350)
                
                
                    Text("To learn a new language ")
//.bold()
                        .foregroundColor(Color("Main"))
                    .font(.largeTitle)
                    HStack{
                        Text("Start with a")
                            .foregroundColor(Color("Main"))
                            
                        Text("word")
                            .foregroundColor(Color("Main"))
                            .bold()
                        
                    }.font(.largeTitle)
                       // .bold()
                
                
        
                Button {
                    shouldshowonb.toggle()
                } label: {
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 25).frame(width:110,height: 45)
                          
                            .foregroundColor(Color("Main"))
                        Text( "Start").foregroundColor(Color("SecondMain"))
                    }.padding(.top)
                     
                    
                    
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
