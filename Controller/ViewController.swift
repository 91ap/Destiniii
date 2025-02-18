//
//  ViewController.swift
//  Destiniii
//
//  Created by apat on 2/13/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!

    
//    let story0 = "You find yourself standing at the edge of a vast, enchanted forest. The trees seem to whisper secrets to each other, and the air is filled with the scent of wildflowers and magic."
//    let choice1 = "You decide to venture deeper into the forest."
//    let choice2 = "Take a shortcut through the dense undergrowth."
    
    var whatToDo = StoryBrain()
    var storyNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storyLabel.text = whatToDo.stories[0].title
             choice1Button.setTitle(whatToDo.stories[0].choice1, for: .normal)
             choice2Button.setTitle(whatToDo.stories[0].choice2, for: .normal)
             choice1Button.tag = 1
             choice2Button.tag = 2
    }

    @IBAction func choiceMade(_ sender: UIButton) {

        whatToDo.nextStory(userChoice: sender.currentTitle!)
               
               updateUI()
    }
    
    
    func updateUI() {
        storyLabel.text = whatToDo.getStoryTitle()
              choice1Button.setTitle(whatToDo.getChoice1(), for: .normal)
              choice2Button.setTitle(whatToDo.getChoice2(), for: .normal)
    }
    

}

