//
//  ContentView.swift
//  WordPlus
//
//  Created by Nsreen Alfaifi on 16/06/1444 AH.
//

import SwiftUI

struct HomeView: View {
    @State var isSheetPresented = false
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
                    
                    ForEach(1..<8) { i in
                        RowView()
                    }
                }
            }
            
        }
        
        .sheet(isPresented: $isSheetPresented, content: {
            AddView()
        })
        .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
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
