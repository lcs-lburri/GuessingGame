//
//  ContentView.swift
//  Guessing game
//
//  Created by Burri, Luke on 2020-11-17.
//

import SwiftUI

struct ContentView: View {
    
    // the guess made by the user
    @State private var theUserGuess = "50"
    
    //the number that the user should guess
    let taget = Int.random(in: 1...100)
    
    //feedback to the user
    @State private var feedback = ""
    
    var body: some View {
        
        NavigationView {
            
            
            VStack {
                
                
                Text("I'm thinking of a number between 1 and 100. Guess what it is!")
                    .font(.title)
                    .padding(.horizontal, 20.0)
                
                TextField("ENter your guess here",
                          text: $theUserGuess)
                Button("Submit Guess") {
                    //cheack the users guess
                }
                
                Text("You guessed \(theUserGuess).")
                    .font(.title)
                    .padding(.horizontal, 15.0)
                
                Text("\(feedback)")
                    .font(.title)
                
                Spacer()
            }
            .navigationTitle("Guessing Game")
            
            
        }
    }
    
    func checkGuess() {
        
        //see if the user gave us an integer in the expected range
        guard let givenInterager = Int(theUserGuess) else {
            feedback = "please provide an interger between 1 and 100."
            return
        }
        guard givenInterager > 0, givenInterager < 101 else {
            feedback = "please provide an interger between 1 and 100."}
        // is the guess correct
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
    }
    
}
