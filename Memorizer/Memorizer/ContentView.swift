//
//  ContentView.swift
//  Memorizer
//
//  Created by João Henrique Almeida Xavier on 19/11/22.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        
        HStack{
        CardView()
        CardView()
        CardView()
        CardView()
            
        }
        .padding(.horizontal)
    }
}


struct CardView: View{
    var body: some View{
        
        ZStack(){
            RoundedRectangle(cornerRadius: 20)
                .stroke()
            Text("🚀")
        }
        .foregroundColor(.red)
    }
}
    
    
    
    
    
    
    
    
    
    
    
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


