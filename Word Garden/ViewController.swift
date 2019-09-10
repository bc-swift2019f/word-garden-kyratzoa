//
//  ViewController.swift
//  Word Garden
//
//  Created by Anastasia Kyratzoglou on 9/9/19.
//  Copyright © 2019 Anastasia Kyratzoglou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userGuideLabel: UILabel!
    @IBOutlet weak var guessedLetterField: UITextField!
    @IBOutlet weak var guessedLetterButton: UIButton!
    @IBOutlet weak var guessCountLabel: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var flowerImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        guessedLetterButton.isEnabled = false
        playAgainButton.isHidden = true
    }
    
    func updateUIAfterGuess(){
        guessedLetterField.resignFirstResponder()
        guessedLetterField.text = ""
    }
    
    @IBAction func guessedLetterFieldChanged(_ sender: UITextField) {
        if let letterGuessed = guessedLetterField.text?.last {
            guessedLetterField.text = "\(letterGuessed)"
            guessedLetterButton.isEnabled = true
        }else{
            //disable the button if I don't have a single character in guessLetterField
            guessedLetterButton.isEnabled = false
        }
    }
    
    @IBAction func doneKeyPressed(_ sender: UITextField) {
        updateUIAfterGuess()
    }
    
    
    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
        updateUIAfterGuess()
    }
    
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
    }
    
}

