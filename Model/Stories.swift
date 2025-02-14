//
//  Stories.swift
//  Destiniii
//
//  Created by apat on 2/14/25.
//
import Foundation

struct StoryBrain {
    
    
    
    let stories = [
        Story(storyTitle: "You see a fork in the road", choice1: "Take a left", choice2: "Take a right"),
        Story(storyTitle: "You see a tiger", choice1: "Shout for help", choice2: "Play dead"),
        Story(storyTitle: "You find a treasure chest", choice1: "Open it", choice2: "check for traps"),
    ]
    
    var questionNumber = 0
    
   mutating func getStoryTitle() {
        
        
    }
}
