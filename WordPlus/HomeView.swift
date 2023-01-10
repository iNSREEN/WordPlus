//
//  ContentView.swift
//  WordPlus
//
//  Created by Nsreen Alfaifi on 16/06/1444 AH.
//

import SwiftUI

struct HomeView: View {
    @State var isSheetPresented = false
    @AppStorage("key1")  var shouldshowonb = true
    var body: some View {
        ZStack {
            Color("SecondMain")
            VStack{
                
                HStack{
                    Text("My Vocabulary")
                        .bold()
                    Spacer()
                    Image(systemName: "plus.circle").onTapGesture {
                        isSheetPresented.toggle()
                    }
                    
                }.foregroundColor(Color("Main"))
                    .font(.largeTitle)
                
              
                ScrollView{
                    
                    ForEach(1..<10) { i in
                        RowView()
                    }
                }
            }
            
        }
        
        .sheet(isPresented: $isSheetPresented, content: {
            AddView()
        })
        .padding()
        .fullScreenCover(isPresented: $shouldshowonb ){
                tab(shouldshowonb: $shouldshowonb)
              }.ignoresSafeArea(.all)
    }
}
//
//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView(isSheetPresented: .constant(false), shouldshowonb: true)
//
//    }
//}
//


struct HeaderView: View {
    var body: some View {
        HStack{
            Text("My Vocabulary")
                .bold()
            Spacer()
            Image(systemName: "plus.circle")
        }.foregroundColor(Color("Main"))
            .font(.largeTitle)
    }
}

struct tab : View{
    @Binding var shouldshowonb :Bool
    var body: some View {
        
        ZStack{
            Color("SecondMain").ignoresSafeArea(.all)
        TabView{
            
            Text("meow1").background(.red)
            Text("meow2")
                        
        }.tabViewStyle(PageTabViewStyle())
              
        }
    }
    
}
