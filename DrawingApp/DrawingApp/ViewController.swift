//
//  ViewController.swift
//  DrawingApp
//
//  Created by 김하림 on 2023/03/28.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

protocol RectangleComponent {
    var id:String { get }
    var size:RectangleSize { get }
    var position:RectanlgePosition { get }
    var backGroundColor:(red:Int, green:Int, blue:Int) { get }
    var alpha:Int { get }
}

class RectangleSize {
    private var width:Double = 150
    private var height:Double = 120
    
    func getWidth() -> Double {
        return self.width
    }
    func getHeight() -> Double {
        return self.height
    }
}
class RectanglePosition {
    private var X:Double
    private var Y:Double
    
    init(X: Double, Y: Double) {
        self.X = X
        self.Y = Y
    }
    func randomPosition() -> RectanglePosition {
        let x = Double.random(in: 0...UIScreen.main.bounds.width)
        let y = Double.random(in: 0...UIScreen.main.bounds.height)
        return RectanglePosition(X: x, Y: y)
    }
    func getPositionX() -> Double {
        return self.X
    }
    func getPositionY() -> Double {
        return self.Y
    }
}
class IdRandomizer {
    func randomString() -> String {
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        var randomString = ""
        for _ in 0..<9 {
                let randomIndex = Int.random(in: 0..<letters.count)
                let letter = letters[letters.index(letters.startIndex, offsetBy: randomIndex)]
                randomString.append(letter)
        }
        return "\(randomString.prefix(3))-\(randomString.prefix(6).suffix(3))-\(randomString.suffix(3))"
        }
}

