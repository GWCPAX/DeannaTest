//
//  ViewController.swift
//  test
//
//  Created by GWC on 6/26/18.
//  Copyright © 2018 GWC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    
    @IBOutlet weak var labelB: UILabel!
    let shapeLayer = CAShapeLayer()
    
    let shapeLayertwo = CAShapeLayer()

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        circleAnimation()
            }
    

    @objc private func handleTap() {
        self.label.text = ""
        let basicAnimation = CABasicAnimation(keyPath:  "strokeEnd")
        basicAnimation.toValue = 1
        basicAnimation.duration = 8
        basicAnimation.fillMode = kCAFillModeForwards
        basicAnimation.isRemovedOnCompletion = false
        _ = CABasicAnimation(keyPath: "strokeEndtwo")
        shapeLayer.add(basicAnimation, forKey: "urSoBasic")
        shapeLayertwo.add(basicAnimation, forKey: "IDK")
        
        textAnimationFading()
    }
    
    func circleAnimation(){
        label.text = "Tap to begin"
        let center = view.center
        let trackLayer = CAShapeLayer()
        let circularPath = UIBezierPath(arcCenter: center, radius: 125, startAngle: -CGFloat.pi / 2, endAngle: 2 * CGFloat.pi, clockwise: true)
        trackLayer.path = circularPath.cgPath
        
        trackLayer.strokeColor = UIColor.lightGray.cgColor
        trackLayer.lineWidth = 10
        trackLayer.lineCap = kCALineCapRound
        trackLayer.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(trackLayer)
        
        shapeLayer.path = circularPath.cgPath
        
        shapeLayer.strokeColor = UIColor.purple.cgColor
        shapeLayer.lineWidth = 10
        shapeLayer.lineCap = kCALineCapRound
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeEnd = 0
        
        shapeLayertwo.path = circularPath.cgPath
        
        shapeLayertwo.strokeColor = UIColor.lightGray.cgColor
        shapeLayertwo.lineWidth = 10
        shapeLayertwo.lineCap = kCALineCapRound
        shapeLayertwo.fillColor = UIColor.clear.cgColor
        shapeLayertwo.strokeEnd = 0
        view.layer.addSublayer(shapeLayertwo)
        
        view.layer.addSublayer(shapeLayer)
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action:#selector(handleTap)))
    }
   
    



    func textAnimationFading(){
        print("Breathe should change")
         labelB.text = "Breathe In"
        
        let fadeTransition = CATransition()
        fadeTransition.duration = 3
        
        CATransaction.begin()
        CATransaction.setCompletionBlock({
            self.labelB.text = "Breathe Out"
            self.labelB.layer.add(fadeTransition, forKey: kCATransition)
        })
        
        labelB.text = "Breathe In"
        labelB.layer.add(fadeTransition, forKey: kCATransition)
        
        CATransaction.commit()
    }


}
