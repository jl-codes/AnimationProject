//
//  ViewController.swift
//  AnimationProject
//
//  Created by John Loehr on 7/24/19.
//  Copyright © 2019 MCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var transformationComplete : Bool = false
  var rec1: CAShapeLayer = CAShapeLayer()
  var rec2: CAShapeLayer = CAShapeLayer()
  var rec3: CAShapeLayer = CAShapeLayer()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    let isTapped = UITapGestureRecognizer()
    isTapped.addTarget(self, action: #selector(didTapView))
    view.addGestureRecognizer(isTapped)
    
    rec1.path = UIBezierPath(rect: CGRect(x: -50, y: -40, width: 100, height: 15)).cgPath
    rec1.position = CGPoint(x: 210, y: 306)
    rec1.fillColor = UIColor(red: 1, green: 0.95, blue: 1, alpha: 1.0).cgColor
    
    rec2.path = UIBezierPath(rect: CGRect(x: -50, y: -5, width: 100, height: 15)).cgPath
    rec2.position = CGPoint(x: 210, y: 306)
    rec2.fillColor = UIColor(red: 1, green: 0.95, blue: 1, alpha: 1.0).cgColor
    
    rec3.path = UIBezierPath(rect: CGRect(x: -50, y: 30, width: 100, height: 15)).cgPath
    rec3.position = CGPoint(x: 210, y: 306)
    rec3.fillColor = UIColor(red: 1, green: 0.95, blue: 1, alpha: 1.0).cgColor
    
    view.layer.addSublayer(rec1)
    view.layer.addSublayer(rec2)
    view.layer.addSublayer(rec3)
    
  }
  
  
  
  @objc func didTapView() {
    // top rectangle animation
    let rec1Rotation : CABasicAnimation = CABasicAnimation(keyPath: "transform.rotation.z")
    rec1Rotation.fillMode = .forwards
    rec1Rotation.isRemovedOnCompletion = false
    rec1Rotation.duration = 0.6
    
    let rec1TranslationX : CABasicAnimation = CABasicAnimation(keyPath: "transform.translation.x")
    rec1TranslationX.fillMode = .forwards
    rec1TranslationX.isRemovedOnCompletion = false
    rec1TranslationX.duration = 0.6
    rec1TranslationX.isCumulative = true
    
    let rec1TranslationY : CABasicAnimation = CABasicAnimation(keyPath: "transform.translation.y")
    rec1TranslationY.fillMode = .forwards
    rec1TranslationY.isRemovedOnCompletion = false
    rec1TranslationY.duration = 0.6
    rec1TranslationY.isCumulative = true
    
    // middle rectangle animation
    let rec2Rotation : CABasicAnimation = CABasicAnimation(keyPath: "transform.rotation.z")
    rec2Rotation.fillMode = .forwards
    rec2Rotation.isRemovedOnCompletion = false
    rec2Rotation.duration = 0.6
    rec2Rotation.isCumulative = true
    
    // bottom rectangle animation
    let rec3Rotation : CABasicAnimation = CABasicAnimation(keyPath: "transform.rotation.z")
    rec3Rotation.fillMode = .forwards
    rec3Rotation.isRemovedOnCompletion = false
    rec3Rotation.duration = 0.6
    
    let rec3TranslationX : CABasicAnimation = CABasicAnimation(keyPath: "transform.translation.x")
    rec3TranslationX.fillMode = .forwards
    rec3TranslationX.isRemovedOnCompletion = false
    rec3TranslationX.duration = 0.6
    rec3TranslationX.isCumulative = true
    
    let rec3TranslationY : CABasicAnimation = CABasicAnimation(keyPath: "transform.translation.y")
    rec3TranslationY.fillMode = .forwards
    rec3TranslationY.isRemovedOnCompletion = false
    rec3TranslationY.duration = 0.6
    rec3TranslationY.isCumulative = true
    
    if transformationComplete {
      //rec2.path = UIBezierPath(rect: CGRect(x: -50, y: -5, width: 100, height: 15)).cgPath
      
      rec2Rotation.toValue = NSNumber(value: Double.pi * 2)
      rec1Rotation.toValue = NSNumber(value: 0)
      rec3Rotation.toValue = NSNumber(value: Double.pi * 2)
      
      rec1.path = UIBezierPath(rect: CGRect(x: -50, y: -40, width: 100, height: 15)).cgPath
      rec2.path = UIBezierPath(rect: CGRect(x: -50, y: -5, width: 100, height: 15)).cgPath
      rec3.path = UIBezierPath(rect: CGRect(x: -50, y: 30, width: 100, height: 15)).cgPath
      
      rec1TranslationX.toValue = NSNumber(value: 0)
      rec3TranslationX.toValue = NSNumber(value: 0)
      rec1TranslationY.toValue = NSNumber(value: 0)
      rec3TranslationY.toValue = NSNumber(value: 0)
      
      rec1.add(rec1Rotation, forKey: "rec1Rotation")
      rec1.add(rec1TranslationX, forKey: "rec1TranslationX")
      rec1.add(rec1TranslationY, forKey: "rec1TranslationY")
      rec2.add(rec2Rotation, forKey: "rec2Rotation")
      rec3.add(rec3Rotation, forKey: "rec3Rotation")
      rec3.add(rec3TranslationX, forKey: "rec3TranslationX")
      rec3.add(rec3TranslationY, forKey: "rec3TranslationY")
      
    } else {
      //rec2.path = UIBezierPath(rect: CGRect(x: -70, y: -5, width: 120, height: 15)).cgPath
      
      rec2Rotation.toValue = NSNumber(value: Double.pi)
      rec1Rotation.toValue = NSNumber(value: (Double.pi * 5) / 4)
      rec3Rotation.toValue = NSNumber(value: (Double.pi * 3) / 4)
      
      rec1.path = UIBezierPath(rect: CGRect(x: -40, y: -35, width: 90, height: 15)).cgPath
      rec2.path = UIBezierPath(rect: CGRect(x: -75, y: -5, width: 120, height: 15)).cgPath
      rec3.path = UIBezierPath(rect: CGRect(x: -45, y: 25, width: 90, height: 15)).cgPath
      
      rec1TranslationX.toValue = NSNumber(value: 5)
      rec3TranslationX.toValue = NSNumber(value: 5)
      rec1TranslationY.toValue = NSNumber(value: 7.5)
      rec3TranslationY.toValue = NSNumber(value: -7.5)
      
      rec1.add(rec1Rotation, forKey: "endRec1Rotation")
      rec1.add(rec1TranslationX, forKey: "endRec1TranslationX")
      rec1.add(rec1TranslationY, forKey: "endRec1TranslationY")
      rec2.add(rec2Rotation, forKey: "endRec2Rotation")
      rec3.add(rec3Rotation, forKey: "endRec3Rotation")
      rec3.add(rec3TranslationX, forKey: "endRec3TranslationX")
      rec3.add(rec3TranslationY, forKey: "endRec3TranslationY")
    }
    transformationComplete = !transformationComplete
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
//  @IBAction func animateImage(sender: Any) {
//
//  }
  


}

