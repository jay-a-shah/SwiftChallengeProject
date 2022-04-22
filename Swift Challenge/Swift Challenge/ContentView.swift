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
    var body: some View {
        ZStack{
            Color.white
       
        VStack{
            Text("Points: \(playerOnePoints)")
                .font(.system(size: 25))
                .bold()

            Image(playerOneImage)
                .resizable()
                .frame(width: 400.0, height: 400.0)
                .onTapGesture {
                    let myTap = Int.random(in: 1...3)
                    playerOneImage = imageGenerator(myTap)
                }
        
            Image(playerTwoImage)
                .resizable()
                .frame(width: 400.0, height: 400.0)
                .onTapGesture {
                    let myTap = Int.random(in: 1...3)
                    playerTwoImage = imageGenerator(myTap)
                }
            
            Text("Points: \(playerTwoPoints)")
                .font(.system(size: 25))
                .bold()
        }
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
