//
//  ViewController.swift
//  FancyLaunch
//
//  Created by Celia on 19/07/2016.
//  Copyright © 2016 Fanigan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var logoImageView: UIImageView!
    @IBOutlet var contentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.logoImageView.hidden = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(animated: Bool) {
        self.transitionToLoginView()
    }
    
    func transitionToLoginView(){
        UIView.animateWithDuration(0.8, delay: 0.3, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
            self.logoImageView.center.x += self.view.bounds.width
            self.logoImageView.transform = CGAffineTransformMakeRotation(CGFloat(M_PI))
            }, completion: {(value: Bool) in
                self.showLoginForm()
                self.logoImageView.hidden = true
        })
    }
    
    func showLoginForm() {
        UIView.animateWithDuration(0.3, animations: {
            self.contentView.alpha = 1;
        })
    }
}

