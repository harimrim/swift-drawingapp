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

}

