//
//  Rectangle.swift
//  DrawingApp
//
//  Created by 김하림 on 2023/03/30.
//

import Foundation

class Rectangle : RectangleComponent {
    let id:String
    let size:RectangleSize
    let position:RectanglePosition
    let backGroundColor:(red:Int, green:Int, blue:Int)
    let alpha:Int
    
    init(id:String, size:RectangleSize, position:RectanglePosition, backGroundColor:(red:Int, green:Int, blue:Int), alpha:Int) {
        
        self.id = id
        self.size = size
        self.position = position
        self.backGroundColor = backGroundColor
        self.alpha = alpha
    }
    
}

extension Rectangle : CustomStringConvertible {
    var description: String {
        return "(\(id), X:\(position.getPositionX()), Y\(position.getPositionY()):, W\(size.getWidth()), H\(size.getHeight()), R:\(backGroundColor.red), G:\(backGroundColor.green), B:\(backGroundColor.blue), Alpha:\(alpha))"
    }
}
