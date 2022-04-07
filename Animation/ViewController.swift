//
//  ViewController.swift
//  Animation
//
//  Created by Nhi Nguyen on 4/7/22.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    
    let animationView = AnimationView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupAnimation()
    }
    private func setupAnimation(){
        animationView.animation = Animation.named("codepaca")
        animationView.frame = view.bounds
        animationView.backgroundColor = .black
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        view.addSubview(animationView)
    }

}

