//
//  ViewController.swift
//  Animation
//
//  Created by Nhi Nguyen on 4/7/22.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    
    var welcomeLabel: UILabel!
    
    let animationView = AnimationView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .black
        setupAnimation()
    }
    
    private func setupAnimation(){
        animationView.animation = Animation.named("codepaca")
        // set the animation view to be the entire view size, kinda big
//        animationView.frame = view.bounds
        animationView.frame = CGRect(x: 0, y: 0, width: 220, height: 220)
        animationView.center = view.center
//        animationView.backgroundColor = .black
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        view.addSubview(animationView)
    }
    
    
    @IBAction func didTapButton(_ sender: Any) {
        // go the the LoginViewController
        // invoke the segue
        // sender: self means we invoke it from this current view controller
        self.performSegue(withIdentifier: "LoginViewSegue", sender: self)
    }
    
    
    
    
//    @IBAction func didTapButton(){
//        present(LoginViewController(), animated: true)
//    }
    
}

//class LoginViewController: UIViewController {
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .red
//
//    }
//
//
//}
