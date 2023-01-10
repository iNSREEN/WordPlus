//
//  RowView.swift
//  WordPlus
//
//  Created by lulwah on 09/01/2023.
//

import SwiftUI

struct RowView: View {
    @EnvironmentObject var realmManager : RealmManager
    @State var word1 = "Different"
    @State var word2 = "مختلف"
    var body: some View {
        ZStack{
            Color.clear
            RoundedRectangle(cornerRadius: 20).stroke()
                .frame(width: 200, height: 30)
            HStack(spacing:32){
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 150, height: 75)
                    Text(word1).foregroundColor(Color("SecondMain"))
                }
                
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 150, height: 75)
                    Text(word2).foregroundColor(Color("SecondMain"))
                }
            }
            
        }.foregroundColor(Color("Main"))
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView().environmentObject(RealmManager())
    }
}
