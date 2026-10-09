//
//  SignInViewController.swift
//  InstaX
//
//  Created by A'zamjon Abdumuxtorov on 10/11/23.
//

import UIKit

class SignInViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func callSignUpController(){
        let vc = SignUpViewController(nibName: "SignUpViewController", bundle: nil)
        self.present(vc, animated: true , completion: nil)
    }
//    func callHomeController(){
//        let vc = HomeViewController(nibName: "HomeViewController", bundle: nil)
//        self.navigationController?.pushViewController(vc, animated: true)
////        self.present(vc, animated: true , completion: nil)
//    }

    @IBAction func signInButton(_ sender: Any) {
        sceneDelegate().callHomeViewController()
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        callSignUpController()
    }
    
}
