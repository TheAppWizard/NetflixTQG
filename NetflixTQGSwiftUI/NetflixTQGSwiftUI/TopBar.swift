//
//  TopBar.swift
//  NetflixTQGSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 25/06/21.
//

import SwiftUI

struct TopBar: View {
    var body: some View {
        HStack{
        
            LeftBar()
            Spacer()
            RightTop()
        }
    }
}

struct TopBar_Previews: PreviewProvider {
    static var previews: some View {
        TopBar()
    }
}


struct LeftBar: View {
    var body: some View {
        HStack{
        Image("net")
            .resizable()
            .frame(width: 125, height: 65, alignment: .center)
           
            Spacer()
            
            Text("Home")
                .fontWeight(.regular)
                .font(.system(size: 20))
                .opacity(0.6)
                .foregroundColor(Color.white)
            
            Spacer()
            
            Text("Movies")
                .fontWeight(.regular)
                .font(.system(size: 20))
                .opacity(0.6)
                .foregroundColor(Color.white)
            
            Spacer()
            
            Text("Series")
                .fontWeight(.regular)
                .font(.system(size: 20))
                .foregroundColor(Color.white)
            
            Spacer()
            Text("News")
                .fontWeight(.regular)
                .font(.system(size: 20))
                .opacity(0.6)
                .foregroundColor(Color.white)
        
        }.padding()
    }
}

struct RightTop: View {
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
                .font(.system(size: 20))
                .foregroundColor(Color.white)
            
            Spacer().frame(width: 40, height: 0, alignment: .center)
            
           
            
            ZStack{
            Image(systemName: "bell.fill")
                .font(.system(size: 20))
                .foregroundColor(Color.white)
           
                Circle().frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.red)
                    .offset(x: 10.0, y: -10.0)
                
            }
            
            
            Spacer().frame(width: 40, height: 0, alignment: .center)
            
            ZStack{
                RoundedRectangle(cornerRadius: 100)
                    .frame(width: 120, height: 50, alignment: .center)
                    .foregroundColor(.clear)

                    .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.red, lineWidth: 2))
                
                Text("LOGIN")
                    .fontWeight(.semibold)
                    .font(.system(size: 20))
                    .foregroundColor(Color.white)
            }
            
            
        }.padding()
    }
}
