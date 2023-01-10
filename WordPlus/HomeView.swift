//
//  ContentView.swift
//  WordPlus
//
//  Created by Nsreen Alfaifi on 16/06/1444 AH.
//

import SwiftUI

struct HomeView: View {
    @StateObject var realmManager = RealmManager()
    @State var isSheetPresented = false
    @AppStorage("key3")  var shouldshowonb = true
    
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
                    
                    ForEach(realmManager.Models , id: \.id) { i in
                        
                        RowView(word1: i.Word, word2: i.Meaning)
                    }
                }
            }.padding(.top)
            
        }
         
        .sheet(isPresented: $isSheetPresented, content: {
            AddView().environmentObject(realmManager)
        })
        .padding()
        .fullScreenCover(isPresented: $shouldshowonb ){
                tab(shouldshowonb: $shouldshowonb)
              }.ignoresSafeArea(.all)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
      //  HomeView(isSheetPresented:false, shouldshowonb: true)
        HomeView()
    }
}

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
            
          OnBoarding1View()
          OnBoarding2View(shouldshowonb: $shouldshowonb)
                        
        }.tabViewStyle(PageTabViewStyle())
              
        }
    }
    
}
