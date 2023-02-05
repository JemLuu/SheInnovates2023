//
//  Tasks.swift
//  SIDEQUESTS
//
//  Created by Sruthi Malineni on 2/4/23.
//

import Foundation

class Tasks
{
    static let healthTasks =
    [
        "Do 10 pushups",
        "Drink a bottle of water",
        "Journal about your day",
        "Go for a walk",
        "Stretch for 5 minutes",
        "Eat breakfast",
        "Soak in the sun for 10 minutes",
        "Limit your screen time",
        "Don’t use screens before bed",
        "Go to bed early tonight",
        "Avoid your vice"
    ]
    
    static let academicTasks =
    [
        "Finish a homework assignment before 9 pm",
        "Ask a question during lecture",
        "Study for 20 minutes for a test that you have in 2 weeks",
        "Stay after class and talk to your professor",
        "Attend all of your classes",
        "Go to office hours"
    ]
    
    static let socialTasks =
    [
        "Give a random person a compliment",
        "Talk to someone new",
        "Call your parents",
        "Ask someone how their day was",
        "Put yourself in an unfamiliar situation",
        "Start a conversation with someone in your class",
        "Go to a club meeting"
    ]

    static let mysteryTask =
    [
        "Read 10 pages of a book",
        "Cook yourself a meal",
        "Do something for yourself",
        "Listen to your favorite song",
        "Start learning a new skill",
        "Learn 10 words in a language you do not know",
        "Check the dictionary word of the day",
        "Test how fast you can type on monkeytype.com",
        "Wear an outfit you like",
        "Take a picture of nature"
    ]
    
    
    static func getRandomHealthTask() -> String
    {
        return healthTasks.randomElement()!
    }
    
    static func getRandomAcademicTask() -> String
    {
        return academicTasks.randomElement()!
    }
    
    static func getRandomSocialTask() -> String
    {
        return socialTasks.randomElement()!
    }

    static func getRandomMysteryTask() -> String
    {
        return mysteryTask.randomElement()!
    }
    
}
