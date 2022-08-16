//
//  ViewController.swift
//  esteeLauder2
//
//  Created by Alayna on 8/12/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    @IBOutlet weak var trailingC: NSLayoutConstraint!
    @IBOutlet weak var leadingC: NSLayoutConstraint!
    
    @IBOutlet weak var ubeView: UIView!
    
    var hamburgerMenuIsVisible = false
    @IBAction func hamburgerBtnTapped(_ sender: Any) {
        //if the hamburger menu is not visible, then move the ubeView back to old place
        if !hamburgerMenuIsVisible {
            leadingC.constant = 500
            //negative because moving 150 points outward
            trailingC.constant = -500
            
            hamburgerMenuIsVisible = true
        }
        else{
            //if hamburger menu IS visible, move VIEW back to original spot
            leadingC.constant = 0
            trailingC.constant = 0
            
            hamburgerMenuIsVisible = false
        }
        
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn, animations: {
                    self.view.layoutIfNeeded()
                }) { (animationComplete) in
                }
    }
    
    @IBOutlet weak var estee: UILabel!
    @IBOutlet weak var lauder: UILabel!
    @IBOutlet weak var hands: UIImageView!
    @IBOutlet weak var discovBtn: UIButton!
    
    @IBAction func homeBtnPressed(_ sender: Any) {
        leadingC.constant = 0
        trailingC.constant = 0
        
        hamburgerMenuIsVisible = false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

