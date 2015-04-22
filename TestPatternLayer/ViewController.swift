//
//  ViewController.swift
//  TestPatternLayer
//
//  Created by jason akakpo on 22/04/2015.
//  Copyright (c) 2015 Big5Media. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func animFirstView(sender: AnyObject)
    {
        addAnim(view1, colors: [UIColor.blackColor().CGColor, UIColor.redColor().CGColor])
        
    }
    
    @IBAction func animSecondView(sender: AnyObject)
    {
        
        var firstColor = UIColor(patternImage: UIImage(named:"stars1")!).CGColor;
        addAnim(view2,
            colors: [firstColor, firstColor, firstColor]);
    }
    
    func addAnim(view:UIView, colors:[CGColor])
    {
        let anim = CAKeyframeAnimation(keyPath:"backgroundColor")
              anim.values = colors;
        anim.keyTimes = [0.0, 0.25];
        anim.calculationMode = kCAAnimationDiscrete
        anim.duration = 0.3;
        anim.repeatCount = Float.infinity;
        view.layer.addAnimation(anim, forKey: "backgroundColor");
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

