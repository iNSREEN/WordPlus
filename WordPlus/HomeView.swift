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
    @AppStorage("key8")  var shouldshowonb = true
    
    var body: some View {
        ZStack {
            Color("SecondMain").ignoresSafeArea(.all)
           
            VStack{
                
                HStack{
                    Text("My Vocabulary")
                        .bold()
                    Spacer()
                    Image(systemName: "plus.circle")
                        .accessibilityLabel(Text("adding"))
                        .accessibilityHint(Text("adding"))
                        .onTapGesture {
                        isSheetPresented.toggle()
                    }
                    
                }.foregroundColor(Color("Main"))
                    .font(.largeTitle).padding()
                
                if realmManager.Models.isEmpty{
                    VStack{
                        Spacer()
                        
                        Text("To start learning new words").foregroundColor(Color("Main"))
                        Text("click the + button ✌🏽").foregroundColor(Color("Main"))
                    }.font(.title3)
                    //Spacer()
                }
                ScrollView{
                    
                    ForEach(realmManager.Models , id: \.id) { i in
                        
                        RowView(word1: i.Word, word2: i.Meaning)
                    }
                }
           
            }.padding(.top,35)
            
        }
        .sheet(isPresented: $isSheetPresented, content: {
            AddView().environmentObject(realmManager)
                .presentationDetents([.medium])
            
            
        })
       
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
            
         // OnBoarding1View()
            OnBoarding2View(shouldshowonb: $shouldshowonb)
                        
        }.tabViewStyle(PageTabViewStyle())
                .ignoresSafeArea()
              
        }
    }
    
}
