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
                // set up the chess
                if j == 0  {
                    brickImageView.image = UIImage(named: "chess\(i+1)")
                }
                if j == 1 {
                    brickImageView.image = UIImage(named: "chess\(i+9)")
                }
                if j == 6 {
                    brickImageView.image = UIImage(named: "chess\(i+17)")
                }
                if j == 7 {
                    brickImageView.image = UIImage(named: "chess\(i+25)")
                }
                
                contentView.addSubview(brickImageView)
            }
            
        }
        
    }


}

