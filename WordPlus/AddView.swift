//
//  AddView.swift
//  WordPlus
//
//  Created by lulwah on 09/01/2023.
//

import SwiftUI

struct AddView: View {
    @EnvironmentObject var realmManager : RealmManager
    @Environment(\.dismiss) var dismiss
    @State var word = ""
    @State var meaning = ""
    var body: some View {
        
        
        ZStack {
            Color.gray.ignoresSafeArea().opacity(0.4)
            VStack {
                HStack {
                    Text("Add new Word").foregroundColor(Color("Main")).font(.title)
                    Spacer()
                    
                }
                
                HStack{
                    VStack(alignment: .leading){
                        Text("Word")
                        TextField("enter..", text: $word)
                            .textFieldStyle(.roundedBorder).frame(width: 150, height: 65)
                    }
                    
                    
                    VStack(alignment: .leading){
                        Text("Meaning")
                        TextField("enter..", text: $meaning)
                            .textFieldStyle(.roundedBorder).frame(width: 150, height: 65)
                    }
                    
                    

                    
                }
                
                Button {
                    if word != "" && meaning != ""{
                        realmManager.addModel(ModelWord: word, ModelMeaning: meaning)
                        
                    }
                    dismiss()
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 16).frame(width: 110, height: 45).foregroundColor(Color("Main"))
                        Text("Add").foregroundColor(Color("SecondMain"))
                    }
                }

            }.padding(.horizontal)
        }
        
       
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView().environmentObject(RealmManager())
    }
}
