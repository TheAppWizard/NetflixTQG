//
//  BottomBar.swift
//  NetflixTQGSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 25/06/21.
//

import SwiftUI

struct BottomBar: View {
    var body: some View {
        HStack{
            
            Text("Overview")
                .fontWeight(.regular)
                .font(.system(size: 20))
                .foregroundColor(Color.white)
                
            
            Spacer().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 0, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Text("Episodes")
                .fontWeight(.regular)
                .font(.system(size: 20))
                .foregroundColor(Color.white)
                .opacity(0.5)
            
            Spacer().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 0, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Text("Details")
                .fontWeight(.regular)
                .font(.system(size: 20))
                .foregroundColor(Color.white)
                .opacity(0.5)
            
            Spacer()
           
        
        }.padding()
    }
}

struct BottomBar_Previews: PreviewProvider {
    static var previews: some View {
        BottomBar()
    }
}
