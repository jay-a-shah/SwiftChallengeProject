//
//  ContentView.swift
//  Swift Challenge
//
//  Created by Jay Shah on 13/04/22.
//

import SwiftUI

struct ContentView: View {
    @State var playerOnePoints = 0
    @State var playerTwoPoints = 10
    @State var playerOneImage = "Stone"
    @State var playerTwoImage = "Paper"
    @State var playerOneTap = 1
    @State var playerTwoTap = 2
    @State var presentAlert = true
    var body: some View {
        ZStack{
            Color.white
       
        VStack{
            Text("Points: \(playerOnePoints)")
                .font(.system(size: 25))
                .bold()
            Spacer()
            Image(playerOneImage)
                .resizable()
                .onTapGesture {
                    playerOneTap = Int.random(in: 1...3)
                    playerOneImage = imageGenerator(playerOneTap)
                    calculatePoints(playerOneTap, playerTwoTap)
                }
        
            Image(playerTwoImage)
                .resizable()
                
                .onTapGesture {
                     playerTwoTap = Int.random(in: 1...3)
                    playerTwoImage = imageGenerator(playerTwoTap)
                    calculatePoints(playerOneTap, playerTwoTap)
                }
            
            Text("Points: \(playerTwoPoints)")
                .font(.system(size: 25))
                .bold()
            Spacer()
        }
         .frame(
            minWidth: 0,
            maxWidth: 400,
            minHeight: 0,
            maxHeight: 900
          )
        }
    }
    
    func imageGenerator(_ num: Int)-> String{
        if num == 1{
            return "Stone"
        }else if num == 2 {
            return "Paper"
        }else if num == 3 {
            return "Scissors"
        }
        return "Stone"
    }
    func calculatePoints(_ one:Int,_ two:Int){
        if 	one == 1 && two == 2{
            playerTwoPoints = playerTwoPoints + 1
        }
        if     one == 1 && two == 3{
            playerOnePoints = playerOnePoints + 1
        }
        if     one == 2 && two == 1{
            playerOnePoints = playerOnePoints + 1
        }
        if     one == 2 && two == 3{
            playerTwoPoints = playerTwoPoints + 1
        }
        if     one == 3 && two == 1{
            playerTwoPoints = playerTwoPoints + 1
        }
        if     one == 2 && two == 3{
            playerOnePoints = playerOnePoints + 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
   
