//
//  ViewController.swift
//  Apple_pie
//
//  Created by Imac on 25/08/25.
//

import UIKit


var listOfWords = ["buccaneer","swift","glorious","incadescent","bug","program"]


let inc_mov = 7

var wins = 0

var losses = 0







class ViewController: UIViewController {
    
    @IBOutlet weak var treeImageView: UIImageView!
    

    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet var letterButton: [UIButton]!
    
   
    @IBOutlet var correctWordLabel: UILabel!
    
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
        
        newRound ()
        // Do any additional setup after loading the view.
    }
    
    
    var currentGame: Game!
    
    func newRound(){
        
        if !listOfWords.isEmpty {
            let newWord = listOfWords.removeFirst()
            
            
            currentGame = Game(word: newWord, incorrectMovesRemaining: inc_mov , guessedLetters: [])
            
            enableLetterButtons(true)
            
            updateUI()
            
            
        }
        
        else{
            
            
            enableLetterButtons(false)
        }
        
    }
    
    func enableLetterButtons(_ enable: Bool){
        
        for button in letterButton {
            
            button.isEnabled = enable
        }
        
        
        
    }
    
    func updateUI(){
        
        var letters = [String]()
        
        for letter in currentGame.formattedWord {
            
            letters.append(String(letter))
        }
        
        let wordwithSpacing = letters.joined(separator: " ")
        
        correctWordLabel.text = currentGame.formattedWord
        
        scoreLabel.text = "Wins: \(wins) Losses: \(losses)"
        
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
        
        
        
    }
    
    
    
    
    
    
    
    
    @IBAction func letterButtonPressed(_ sender: UIButton) {
        
        sender.isEnabled = false
        
        
        let letterString = sender.configuration!.title!
        
        let letter = Character(letterString.lowercased())
        
        currentGame.playerGuessed(letter: letter)
        
        updateUI()
        
        updateGameState()
        
    }
    
    
    func updateGameState(){
        
        if currentGame.incorrectMovesRemaining == 0{
            
            losses += 1
            
            newRound()
        }
        else if currentGame.word == currentGame.formattedWord {
            
            wins += 1
            
            newRound()
        }
        
        else{
            
            updateUI()
        }
    }
}




