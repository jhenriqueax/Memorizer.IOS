//
//  ContentView.swift
//  Memorizer
//
//  Created by João Henrique Almeida Xavier on 19/11/22.
//

import SwiftUI


struct ContentView: View {
    
    var emojis = ["😂","😝","😁","😱","👉","🙌","🍻","🔥","🌈","☀","🎈"]
    @State  var emojiCount = 4
    var body: some View {
        VStack{
            
            HStack{
                ForEach(emojis[0..<emojiCount], id: \.self) {emoji in
                    CardView(content: emoji)
                }
            }
            .padding(.horizontal)
            
            HStack{
                add
                Spacer()
                remove
                
            }.padding(.horizontal)
        }
    }
    
    
    
    var add: some View {
        
        Button(action: {
            
            emojiCount += 1
            
        }, label: {Image(systemName: "plus.circle").resizable()
                .foregroundColor(.red)
                .frame(width: 30.0, height: 30.0)
            
        })
    }
    
    
    var remove: some View{
        
        Button(action: {
            
            emojiCount -= 1
            
        }, label: {Image(systemName: "minus.circle").resizable()
            
                .frame(width: 30.0, height: 30.0)
              
                .foregroundColor(.red)
            
        })
    }
}


struct CardView: View{
    
    var content: String
   @State var isFaceUp: Bool = false
    var body: some View{
       
    
        ZStack(){
            
            let shape = RoundedRectangle(cornerRadius: 20)
            
            if isFaceUp{
                
                shape.fill().foregroundColor(.white)
                
                shape.stroke().foregroundColor(.blue)
                
                Text(content).font(.largeTitle)
            }
            else{
                
                shape.fill().foregroundColor(.blue)
            }
        }
        .onTapGesture{
            isFaceUp = !isFaceUp
        }
        
    }
}
    
    
    
    
    
    
    
    
    
    
    
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .preferredColorScheme(.dark)
            
    }
}


