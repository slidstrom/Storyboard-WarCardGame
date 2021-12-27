//
//  ViewController.swift
//  WarCardGame
//
//  Created by DSIAdmin on 12/23/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    // IBOutlet indicates that this property references an object in the story board
    
    // Card Property References
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    // Label Property References
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    // Properties to keep score
    var playerScore = 0
    var cpuScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        
    }
    
    
    // Deal Cards function
    @IBAction func dealTapped(_ sender: Any) {
        
        // assign random numbers to generate random card
        let rand1 = Int.random(in: 2...14)
        let rand2 = Int.random(in: 2...14)
        
        // change the image of the card using the random number
        leftImageView.image = UIImage(named: "card\(rand1)")
        rightImageView.image = UIImage(named: "card\(rand2)")
        
        if rand1 > rand2 {
            // Player wins
            playerScore += 1
            
            // Update Label
            leftScoreLabel.text = String(playerScore)
        }
        else if rand2 > rand1 {
            // CPU wins
            cpuScore += 1
            
            // Update Label
            rightScoreLabel.text = String(cpuScore)
        }
        else {
            // Draw
            
        }
        
        
    }
    

}

