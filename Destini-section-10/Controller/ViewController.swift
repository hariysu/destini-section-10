//
//  ViewController.swift
//  Destini-section-10
//
//  Created by Abdurahman on 29.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyNumber: Int = 0
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        if sender.currentTitle == storyBrain.stories[storyNumber].choice1 {
            storyNumber = 1
        }else if sender.currentTitle == storyBrain.stories[storyNumber].choice1 {
            storyNumber = 2
        }
        updateUI()
    }
    
    func updateUI(){
        
        storyLabel.text = storyBrain.stories[storyNumber].title
        choice1Button.setTitle(storyBrain.stories[storyNumber].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[storyNumber].choice2, for: .normal)
        
        
    }
    
}

