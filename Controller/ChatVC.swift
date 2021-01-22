//
//  ChatVC.swift
//  slackApp
//
//  Created by sonam sodani on 2021-01-21.
//

import UIKit

class ChatVC: UIViewController {

   
    @IBOutlet weak var menuButton: UIButton!
    
    
    @IBAction func menuButtonPressed(_ sender: Any) {
       print("I am here")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        menuButton.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        
        
    }
    

}
