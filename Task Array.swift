//
//  Task Array.swift
//  Task manager
//
//  Created by Christian Lamb on 9/18/18.
//  Copyright © 2018 Christian Lamb. All rights reserved.
//

import Foundation


class TaskArray {
    var taskArray: [Task] = [Task(detials: "You need to take the trash out.", title: "Take the trash out")
]//this is the array where every task is stored
        //This makes an array that can store task.
    
    func makeANewTask() {
        print("What is the name of the task you need to schedule")
        guard let nameOfTask = readLine() else {//this creats a var that is used later to add to the array
            print("Invalid input")
            return//This takes in user input and verifys it
        }
        print("What is some details of the task you need to schedule")
        guard let detailsOfTask = readLine() else {//this creats a var that is used later to add to the array
            print("Invalid input")
            return//This takes in user input and verifys it
        }
        
        
        let newTask = Task(detials: detailsOfTask, title: nameOfTask)
        taskArray.append(newTask)//This adds the new task to the array
        print("Updated List Of task")
        for task in taskArray {//This prints the new list of task
            print(task.title)
            }
        sleep(2)
        
       }
    
    func listCompleteTask() {//prints every task in task array where complete is true
        for task in taskArray {
            if task.complete  == true {
                print(task.title)
            }
        }
        sleep(2)
    }
    
    func listUncompletedTask() {//prints every task in task array where complete is false
        for task in taskArray {
            if task.complete == false {
                print(task.title)
            }
        }
        sleep(2)
    }
    
    func listAllTask()  {
        for task in taskArray {//prints out every task in task array
            print(task.title)
        }
         sleep(2)
    }
    
    func markTaskAsComplete () {
        for index in 0..<taskArray.count {
            if taskArray[index].complete == false {
                print("\(index). \(taskArray[index].title)")
            }//This prints the value of everything in the array next to the title of each task in the array
        }
            print("Please input the number next to the task you have completed")
        let validUserIndex = (0..<taskArray.count)//makes an array containing all possible valid inputs
        guard let userInput = Int(readLine()!) else {
            print("Invalid input")
            //This guard let statement makes sure the user input isnt nil
            sleep(2)
            return
        }
        while !validUserIndex.contains(userInput){
            print("Invalid input")//This Makes sure the number inputed is within the arrays index.
        }
        taskArray[userInput].complete = true//this makes the selected task complete
        sleep(2)
    }
    
    func markTaskAsInComplete () {
        for index in 0..<taskArray.count {
            if taskArray[index].complete == true {
                print("\(index). \(taskArray[index].title)")
            }//This prints the value of everything in the array next to the title of each task in the array
        }
        print("Please input the number next to the task you have completed")
        let validUserIndex = (0..<taskArray.count)//makes an array containing all possible valid inputs
        guard let userInput = Int(readLine()!) else {
            print("Invalid input")//This guard let statement makes sure the user input isnt nil
            sleep(2)
            return
        }
        while !validUserIndex.contains(userInput){
            print("Invalid input")//This Makes sure the number inputed is within the arrays index.
        }
        taskArray[userInput].complete = false
         sleep(2)
    }
    
    func deleteTask()  {
        for index in 0..<taskArray.count {
        print("\(index). \(taskArray[index].title)")
        }//This prints the value of everything in the array next to the title of each task in the array
        
        print("Please input the number next to the task you would like to remove.")
        let validUserIndex = (0..<taskArray.count)//makes an array containing all possible valid inputs
        guard let userInput = Int(readLine()!) else {
            print("Invalid input")
            sleep(2)
            return}//This guard let statement makes sure the user input isnt nil
                while  !validUserIndex.contains(userInput){
            print("Invalid input")//This Makes sure the number inputed is within the arrays index.
        }
        taskArray.remove(at: userInput)//removes the selected task from the task array
        print("Updated list of task.")
        for task in taskArray {//prints the task array after the change is made
            print(task.title)
        }
        sleep(2)
    }
    
    

        
    
    }
    

