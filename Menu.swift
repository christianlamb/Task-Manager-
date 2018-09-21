//
//  Menu.swift
//  Task manager
//
//  Created by Christian Lamb on 9/18/18.
//  Copyright © 2018 Christian Lamb. All rights reserved.
//

import Foundation

class Menu {

var shouldQuit = false
    let taskArray =  TaskArray()
   
    
    
    func go() {
        //This is the go function we call it in main swift
        while shouldQuit == false{//Is set to repeat as long as should quit is false which is changed when the user inputs 8 while at the menu
            
            printMenu()//this prints the menu
            let inPut = getInPut()//This sets the input
            if validateInput(inPut) == false{//This validates the input
                //Display menu again
                printMenu()//If its invalid the menu is printed again untill the inout is valid
                print("Invalid Input")
                sleep(2)
            }
            handleInPut(input: inPut)//This openes the function that goes with the option they picked.
      }
    }
        
        
    
    
    func printMenu() {//This is the menu that is diplayed
          print("""
                1.Add a Task            5.Mark Task As Complete
                2.List UnCompleted task 6.Mark Task As Incomplete
                3.List Completed Task   7.Delet Task
                4.List All Task         8.Quit!!!!!!
                Please enter the number next to the option you would like to chose
                """)//This prints all the menu options.
    
    }
    
    func handleInPut(input:String) {
        //This is what takes the userinput and decides what function to run.
        switch input {
        case "1":
            taskArray.makeANewTask()
        case "2":
            taskArray.listUncompletedTask()
        case "3":
            taskArray.listCompleteTask()
        case "4":
            taskArray.listAllTask()
        case "5":
            taskArray.markTaskAsComplete()
        case "6":
            taskArray.markTaskAsInComplete()
        case "7":
            taskArray.deleteTask()
        case "8":
            quit()
        case "9":
            quit2()
        default:
            break
        }
        
    }
    
    func quit() {
        //This function will be called when the user is ready to quit the application.
        //Since the user is ready to quit we set ready to quit to true.
        
        shouldQuit = true
        //Show the user a message
        print("Thanks for using the task manager")
        
        
    }
    func quit2() {
        //This function will be called when the user is ready to quit the application.
        //Since the user is ready to quit we set ready to quit to true.
        
        shouldQuit = true
        //Show the user a message
        print("You Know My Secret!!!")
        
        
    }
    
    
        
        func getInPut() -> String {
            
            guard let userInput = readLine() else {
                print("Invalid input")
                return "Invalid Input"
            }//This gets teh input for the hendleInPut function
            return userInput
            
        }
   
        
        
        func validateInput (_ input:String) -> Bool {//This function validates the input that the user gives after they see the menu
            let validMenuOptions = Array(1...9)
            guard let number = Int(input)else {
                return false
            }
            return validMenuOptions.contains(number)
        }
    
}
