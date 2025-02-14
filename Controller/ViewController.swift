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
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        updateUI()
        
        storyLabel.text = whatToDo.stories[0].storyTitle
        choice1Button.setTitle(whatToDo.stories[0].choice1, for: .normal)
        choice2Button.setTitle(whatToDo.stories[0].choice2, for: .normal)
        choice1Button.tag = 1
        choice2Button.tag = 2
        // Do any additional setup after loading the view.
    }

    @IBAction func choiceMade(_ sender: UIButton) {
       
        switch sender.tag {
            case 1:
                updateUI(forChoice: 1)
            case 2:
                updateUI(forChoice: 2)
            default:
                return 
                
        }
        
        
        
    }
    
    
    func updateUI(forChoice choice: Int) {
        
        if choice == 1 {
            storyLabel.text = whatToDo.stories[1].storyTitle
            choice1Button.setTitle(whatToDo.stories[1].choice1, for: .normal)
            choice2Button.setTitle(whatToDo.stories[1].choice2, for: .normal)
            print("\(whatToDo.stories[1].storyTitle)")
        } else if choice == 2 {
            storyLabel.text = whatToDo.stories[2].storyTitle
            choice1Button.setTitle(whatToDo.stories[2].choice2, for: .normal)
            choice2Button.setTitle(whatToDo.stories[2].choice1, for: .normal)
            print("\(whatToDo.stories[2].storyTitle)")
        }
        
    }
    

}

