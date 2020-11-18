//
//  ContentView.swift
//  Guessing game
//
//  Created by Burri, Luke on 2020-11-17.
//

import SwiftUI

struct ContentView: View {
    
    // the guess made by the user
    @State private var theUserGuess = ""
    
    //the number that the user should guess
    @State private var target = Int.random(in: 1...100)
    
    //feedback to the user
    @State private var feedback = ""
    
    //keep track of whether the game  is over
    @State private var gameOver = false
    
    

    var body: some View {
        
        NavigationView {
            
            
            VStack {
                
                
                Text("I'm thinking of a number between 1 and 100. Guess what it is!")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20.0)
                
                TextField("Enter your guess here",
                          text: $theUserGuess)
                    .multilineTextAlignment(.center)
                    
                    
                
                Button("Submit Guess") {
                    //cheack the users guess
                    checkGuess()
                
                }
                
                Text("You guessed \(theUserGuess).")
                    .font(.title)
                    .padding(.horizontal, 15.0)
                
                Text("\(feedback)")
                    .font(.title)
                
                Spacer()
            }
            if gameOver == true {
                Button("reset game") {resetGame()
                    
                }
                .navigationTitle("Guessing Game")
                
            }
    
        }
    }
    
    
    func checkGuess() {
        
        //see if the user gave us an integer in the expected range
        guard let givenInterager = Int(theUserGuess) else {
            feedback = "please provide an interger between 1 and 100."
            return
        }
        guard givenInterager > 0, givenInterager < 101 else {
            feedback = "please provide an interger between 1 and 100."
            return
        }
        // is the guess correct
        if givenInterager == target{
            feedback =  "you guessed it correct!"
            gameOver = true
        }
        else if givenInterager > target{
            feedback = "Guess lower"
        }
        else if givenInterager < target{
            feedback = "Guess higher"
        }
        
    }
    
    //reset the game
    func resetGame() {
        if gameOver = true 
        //Pick a new random number
        
        target = Int.random(in: 1...100)
        
        //clear out the old feedback from the prior round
        
        theUserGuess = ""
        feedback = ""
    }
    
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
    }
    
}

