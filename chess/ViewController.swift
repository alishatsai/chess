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
        let brickWidth = self.view.frame.width/CGFloat(count)
        self.view.backgroundColor = UIColor.black
        let contentView = UIView()
        contentView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.width)
        contentView.center = self.view.center
        self.view.addSubview(contentView)
        
        // chess map
        for i in 0...count-1 {
            for j in 0...count-1 {
                let brickImageView:UIImageView = UIImageView()
                brickImageView.contentMode = UIView.ContentMode.scaleAspectFit
                brickImageView.frame = CGRect(x:CGFloat(i)*brickWidth , y: 0, width: brickWidth, height: brickWidth)
                brickImageView.center.y = CGFloat(j)*brickWidth
                if (i+j) % 2 == 0 {
                    brickImageView.backgroundColor = .darkBrick
                }else {
                    brickImageView.backgroundColor = .lightBrick
                }
                contentView.addSubview(brickImageView)
            }
            
        }
        
    }


}

