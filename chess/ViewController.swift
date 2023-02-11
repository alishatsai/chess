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
        
        let count: CGFloat = 8.0
        let squareW = self.view.frame.width/(count+1.0)
        self.view.backgroundColor = UIColor.black
        let contentView = UIView()
        contentView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.width)
        contentView.center = self.view.center
        self.view.addSubview(contentView)
        
        let squareImageView:UIImageView = UIImageView()
        squareImageView.contentMode = UIView.ContentMode.scaleAspectFit
        squareImageView.frame = contentView.bounds
        squareImageView.backgroundColor = UIColor.lightGray
        contentView.addSubview(squareImageView)

    }


}

