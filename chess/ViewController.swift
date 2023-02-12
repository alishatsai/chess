//
//  ViewController.swift
//  chess
//
//  Created by Alisha on 2023/2/10.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let count: Int = 8
        let squareW = self.view.frame.width/CGFloat(count)
        self.view.backgroundColor = UIColor.black
        let contentView = UIView()
        contentView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.width)
        contentView.center = self.view.center
        self.view.addSubview(contentView)
        
    }


}

