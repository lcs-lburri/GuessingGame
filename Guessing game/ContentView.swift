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
    
    var body: some View {
        
        VStack {
            Text("Guessing Game")
            
            Text("I'm thinking of a number between 1 and 100. Guess what it is!")
            
            TextField("ENter your guess here",
                      text: $theUserGuess)
            Button("Submit Guess") {
        //cheack the users guess
            }
            
            Text("You guessed \(theUserGuess).")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
