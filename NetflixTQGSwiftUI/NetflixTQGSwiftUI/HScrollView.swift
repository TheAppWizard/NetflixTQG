//
//  HScrollView.swift
//  NetflixTQGSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 25/06/21.
//

import SwiftUI

struct HScrollView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                 
                
                ZStack{
                
                        PlayVideo()
                    
                    
                    Text("TRAILER")
                        .font(.title)
                        .fontWeight(.regular)
                        .foregroundColor(Color.white)
                        .offset(x: -160, y: 100)
                    
                }
                
                
                ZStack{
                Image("img1").resizable() .frame(width: 500, height: 300)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.white, lineWidth: 2))
                    
                    Rectangle().frame(width: 500, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
                        .blur(radius: 5)
                        .foregroundColor(.black)
                        .opacity(0.6)
                        .offset(x: 0, y: 100)
                    
                    Text("EPISODE 1")
                        .font(.title)
                        .fontWeight(.regular)
                        .foregroundColor(Color.white)
                        .offset(x: -160, y: 100)
                
                }
                
                ZStack{
                
                Image("img2").resizable() .frame(width: 500, height: 300)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.white, lineWidth: 2))
                    
                    Rectangle().frame(width: 500, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
                        .foregroundColor(.black)
                        .blur(radius: 5)
                        .opacity(0.6)
                        .offset(x: 0, y: 100)
                    
                    Text("EPISODE 2")
                        .font(.title)
                        .fontWeight(.regular)
                        .foregroundColor(Color.white)
                        .offset(x: -160, y: 100)
                    
                }
                
            }.padding()
            }
        }
    }


struct HScrollView_Previews: PreviewProvider {
    static var previews: some View {
        HScrollView()
    }
}


