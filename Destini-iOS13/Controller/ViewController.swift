//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let userChoice = sender.titleLabel!.text!
        storyBrain.nextStory(userChoice)
        self.updateUI()
    }
    
    @objc func updateUI() {
        let storyNumber = storyBrain.storyNumber
        storyLabel.text = storyBrain.stories[storyNumber].story
        choice1Button.setTitle(storyBrain.stories[storyNumber].choice1, for: [])
        choice2Button.setTitle(storyBrain.stories[storyNumber].choice2, for: [])
    }
    
}

