//
//  aaaViewController.swift
//  test
//
//  Created by GWC on 6/27/18.
//  Copyright © 2018 GWC. All rights reserved.
//

import UIKit

class aaaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let label = UILabel()
        label.frame = CGRect(x: 0.0, y: 0.0, width: 400.0, height: 75.0)
        label.backgroundColor = .white
        label.font = .preferredFont(forTextStyle: UIFontTextStyle.title1)
        label.textAlignment = .center
        label.text = "Hello, world!"
        
        let fadeTransition = CATransition()
        fadeTransition.duration = 0.2
        
        CATransaction.begin()
        CATransaction.setCompletionBlock({
            label.text = "Goodnight, moon..."
            label.layer.add(fadeTransition, forKey: kCATransition)
        })
        
        label.text = ""
        label.layer.add(fadeTransition, forKey: kCATransition)
        
        CATransaction.commit()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}








//        UIView.animate(withDuration: 2) {
//            self.breatheIn.alpha = 1
//        }
//
//
//        UIView.animate(withDuration: 2) {
//            self.breatheOut.alpha = 1
//        }

//        let view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
//        view.backgroundColor = UIColor.blue
//        self.view.addSubview(view)
//
//        UIView.animate(withDuration: 1,
//                                   delay: 0,
//                                   options: [UIViewAnimationOptions.autoreverse, UIViewAnimationOptions.repeat],
//                                   animations: {
//                                    view.backgroundColor = UIColor.clear
//        },
//                                   completion: nil)
//    }


//    struct Instruction {
//        let instructions: [String]
//    }

//var currentInstruction: Instruction!

//    var instructions: [Instruction] = [
//    Instruction(
//        instructions: ["Breathe in", "Breathe out"]
//        )]


//start
