//
//  ContentView.swift
//  Chi-Fou-Mi
//
//  Created by Mathieu Moutarde on 30/06/2023.
//

import SwiftUI

struct ContentView: View {
    var imageArray = ["paper", "rock", "scissors"]
    var gagne = "It's won"
    var perd = "Lost ! Try again"
    var matchNul = "Equality"
    @State var currentIndex: Int = 0
    @State var curretChoice = "paper"
    @State var isGameOver = false
    @State var showAlert = false
    @State var showSheet = false
    @State var alertMessage = ""
    @State var timer: Timer?
    @State var alertTitle = ""
    @State var score = 0
    @State var currentImageName = "paper"
    
    var body: some View {
        HStack {
            VStack (alignment: .center) {
                Text("Chi-Fou-Mi")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.blue)
                    .padding()
                Rectangle()
                    .fill(Color.blue)
                    .frame(maxWidth: .infinity, maxHeight: 3)
            }
        }
        .padding()
        HStack (spacing: 20) {
            Image(curretChoice)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text("VS")
                .font(.title)
                .bold()
                .foregroundColor(.red)
            Image(currentImageName)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
        }
        .onAppear(perform: startTimer)
        .onDisappear(perform: stopTimer)
        Spacer()
        VStack {
            Text("Score : \(score)")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.blue)
        }
        Spacer()
        VStack {
            Button {
                showSheet = true
            } label: {
                Text("Choices")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.cyan)
            }.buttonBorderShape(.roundedRectangle)
                .buttonStyle(.borderedProminent)
                .accentColor(.black)
            
                }

                .confirmationDialog("Dialogue", isPresented: $showSheet){
                    ForEach(imageArray, id:\.self) {
                        string in Button {
                            curretChoice = string
                            showSheet = false
                            evaluateResult()
                        } label: {
                            Text(string)
                        }
                    }
                } message: {
                    Text("Make the right choice")
                }
                .alert(isPresented: $showAlert) {
                    stopTimer()
                    return Alert(
                        title: Text("Result"),
                        message: Text(alertMessage),
                        dismissButton: .default(Text("OK")) {
                            showAlert = false
                            startTimer()
                        }
                    )
                }
        }
    func startTimer() {
            timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
                currentIndex = (currentIndex + 1) % imageArray.count
                currentImageName = imageArray[currentIndex]
            }
        }
        func stopTimer() {
            timer?.invalidate()
        }
        func evaluateResult() {
            // Compare your choice and the computer's choice to determine the result
            if curretChoice == currentImageName {
                alertTitle = matchNul
                alertMessage = "Tie, try your luck again"
            } else if (curretChoice == "paper" && currentImageName == "rock") || (curretChoice == "rock" && currentImageName == "scissors") || (curretChoice == "scissors" && currentImageName == "paper") {
                alertTitle = gagne
                alertMessage = "Well done, you won this round!"
                score += 1
            } else {
                alertTitle = perd
                alertMessage = "Too bad it's lost"
            }
            showAlert = true
            isGameOver = true
        }
        
        
        
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
