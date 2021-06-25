//
//  ContentView.swift
//  NetflixTQGSwiftUI
//
//MARK:-  Created by
//Shreyas Vilaschandra Bhike on 25/06/21.
//MARK:- The App Wizard
//MARK:- Instagram : theappwizard2408


import SwiftUI

struct ContentView: View {
    var body: some View {
       FinalView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)

        
    }
}

























struct FinalView: View {
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
           
            BodyView()
            
            AnimPawn()
            
            Image("name").resizable()
                .frame(width : 380 ,height: 160, alignment: .center)
                .offset(x: -200, y: -400)
            
            HScrollView().offset(x: 0, y: 290)
            TopBar().offset(x: 0, y: -500)
            BottomBar().offset(x: 0, y: 500)
            
        
        
        }
    }
}

struct BodyView: View {
    var body: some View {
        ZStack{
            Image("darkbg").resizable()
                .edgesIgnoringSafeArea(.all)
                .opacity(0.2)
                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                
            Image("queen").resizable()
                .frame(width : 830 ,height: 800, alignment: .center)
                .offset(x: 0, y: -180)
            
          
        }
    }
}

struct AnimPawn: View {
    
       @State var animateall  = false
        
    
    
    
    var body: some View {
        ZStack{
            
            
           
            Image("knight").resizable().frame(width: 60, height: 160, alignment: .center)
                .offset(x: 330, y: -100)
                .blur(radius: /*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                .rotationEffect(.degrees(animateall ? 10 : -10))
            
            Image("queenw").resizable().frame(width: 60, height: 160, alignment: .center)
                .offset(x: -250, y: -200)
                .rotationEffect(.degrees(animateall ? 15 : -10))
            
            Image("king").resizable().frame(width: 60, height: 160, alignment: .center)
                .offset(x: 250, y: -200)
                .rotationEffect(.degrees(animateall ? -15 : -10))
            
            Image("rookw").resizable().frame(width: 60, height: 160, alignment: .center)
                .blur(radius: /*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                .offset(x: -250, y: 10.0)
                .rotationEffect(.degrees(animateall ? -10 : 10))
           
            Image("pawn").resizable().frame(width: 60, height: 160, alignment: .center)
                .offset(x: animateall ? -330 : -150, y: -100)
                .rotationEffect(.degrees(animateall ? -25 : -10))
            
            Image("pawnw").resizable().frame(width: 60, height: 160, alignment: .center)
                .offset(x: 250, y: 10)
                .rotationEffect(.degrees(animateall ? 10 : -15))
            
          
        }.animation(Animation.easeInOut(duration: 5).repeatForever(autoreverses: true))
        .onAppear() {
            self.animateall.toggle()
      }
    }
}
