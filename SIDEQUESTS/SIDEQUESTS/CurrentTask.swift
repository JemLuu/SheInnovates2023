//
//  CurrentTask.swift
//  SIDEQUESTS
//
//  Created by Sruthi Malineni on 2/4/23.
//

import Foundation


struct CurrentTask
{
    static var hasTask = false
    
    static var currentTask = ""
    
    static var currentTaskType = ""
    
    static func getHasTask() -> Bool
    {
        return hasTask
    }
    
    static func setHasTask(updateBool: Bool)
    {
        hasTask = updateBool
    }
    
    static func getCurrentTask() -> String
    {
        return currentTask
    }
    
    static func setCurrentTask(updateTask: String)
    {
        currentTask = updateTask
    }
    
    static func getCurrentTaskType() -> String
    {
        return currentTaskType
    }
    
    static func setCurrentTaskType(updateType: String)
    {
        currentTaskType = updateType
    }
    
    static func chooseHealth() -> String
    {
        var task = ""
        if !getHasTask()
        {
            task = Tasks.getRandomHealthTask()
            setCurrentTask(updateTask: task)
            setCurrentTaskType(updateType: "Health")
            setHasTask(updateBool: true)
        } else if getCurrentTaskType() == "Health"
        {
            task = getCurrentTask()
        } else
        {
            task = getCurrentTaskType() + " quest was already chosen 🔒"
        }
        return task
    }
    
    static func chooseAcademic() -> String
    {
        var task = ""
        if !getHasTask()
        {
            task = Tasks.getRandomAcademicTask()
            setCurrentTask(updateTask: task)
            setCurrentTaskType(updateType: "Academic")
            setHasTask(updateBool: true)
        } else if getCurrentTaskType() == "Academic"
        {
            task = getCurrentTask()
        } else
        {
            task = getCurrentTaskType() + " quest was already chosen 🔒"
        }
        return task
    }
    
    static func chooseSocial() -> String
    {
        var task = ""
        if !getHasTask()
        {
            task = Tasks.getRandomSocialTask()
            setCurrentTask(updateTask: task)
            setCurrentTaskType(updateType: "Social")
            setHasTask(updateBool: true)
        } else if getCurrentTaskType() == "Social"
        {
            task = getCurrentTask()
        } else
        {
            task = getCurrentTaskType() + " quest was already chosen 🔒"
        }
        return task
    }
    
    static func chooseMystery() -> String
    {
        var task = ""
        if !getHasTask()
        {
            task = Tasks.getRandomMysteryTask()
            setCurrentTask(updateTask: task)
            setCurrentTaskType(updateType: "Mystery")
            setHasTask(updateBool: true)
        } else if getCurrentTaskType() == "Mystery"
        {
            task = getCurrentTask()
        } else
        {
            task = getCurrentTaskType() + " quest was already chosen 🔒"
        }
        return task
    }
    
}
