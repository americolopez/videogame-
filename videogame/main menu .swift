//
//  main menu .swift
//  videogame
//
//  Created by Americo Lopez on 2/13/18.
//  Copyright © 2018 Americo Lopez. All rights reserved.
//

import Foundation



class VideoGame {
    var name: String
    var price: Double
    var genre: String
    var timeCheckOut: Date
    var availble: Bool
    init(name: String, price: Double, genre: String ,timeCheckOut: Date, availble: Bool){
        self.name = name
        self.price = price
        self.genre = genre
        self.availble = availble
        self.timeCheckOut = timeCheckOut
    }
}
var gamesArray = [VideoGame]()
func  mainMenu(){
    var NumberOfGames = gamesArray.count
    print("""
1. Browse
type in 1
2. Quit programing
type 2
3. Add game
type in 3
4.remove game
type in 4
5.checkout
type in 5
6.check in 6
type in 6
please type in a number
""")
    var Input = Int(readLine()!)
    
    if Input == 2{
        exit(0)
        
    }else if Input == 1 {
        browse()
    }
    else if Input == 3{
        addGame()
    }
    else if Input == 4{
        checkOut()
    }else if Input == nil {
        print("pls type a number 1-4 ")
        mainMenu()
    }else if Input == 5 {
    checkOut()
    }
    else if Input == 6 {
    checkIn()
}else{
        print("pls type a number 1-4")
        mainMenu()
    }
}
func addGame() {
    print("name of game then price and last genre ")
    gamesArray.append(VideoGame(name: readLine()!, price: Double(readLine()!)!, genre: readLine()!, timeCheckOut: Date(), availble: Bool()))
    
    print("your game has been saved")
    sleep(1)
    if gamesArray.count > 0{
        for VideoGames in gamesArray{
            print ("what game do you wanna check in")
            let gamesIn = Int(readLine()!)!
            if gamesIn != nil && gamesIn <= gamesArray.count - 1 {
                gamesArray[gamesIn].availble = true
                gamesArray[gamesIn].timeCheckOut = Date()
                
            }
        }
    }
    print("you have checked in your game")
    sleep(2)
    mainMenu()
}
func browse() {
    if gamesArray.count > 0 {
        for VideoGames in gamesArray {
            print("""
                title \(VideoGames.name)
                price \(VideoGames.price)
                genre \(VideoGames.genre)
                availble\(VideoGames.availble)
                """)
        }
        sleep(5)
        mainMenu()
    } else {
        print("There are no games, you'll be tooken back to the main menu ")
        sleep(5)
        mainMenu()
    }
}
func checkOut(){
    if gamesArray.count > 0 {
        for VideoGames in gamesArray{
            print("what game do you wanna check out")
            let gamesOut = Int(readLine()!)!
            if gamesOut != nil && gamesOut <= gamesArray.count - 1 {
                gamesArray[gamesOut].availble = false
                gamesArray[gamesOut].timeCheckOut = Date()
            }
            
        }
        }
    print("you have checked out your game")
    sleep(2)
    mainMenu()
}
func checkIn(){
    if gamesArray.count > 0{
        for VideoGames in gamesArray{
            print ("what game do you wanna check in")
            let gamesIn = Int(readLine()!)!
            if gamesIn != nil && gamesIn <= gamesArray.count - 1 {
                gamesArray[gamesIn].availble = true
                gamesArray[gamesIn].timeCheckOut = Date()
    
            }
        }
    }
    print("you have checked in your game")
    sleep(2)
    mainMenu()
}




