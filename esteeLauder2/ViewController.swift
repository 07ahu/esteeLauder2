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
            leadingC.constant = 700
            //negative because moving 150 points outward
            trailingC.constant = -700
            
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
  
    @IBOutlet weak var hands: UIImageView!
    @IBOutlet weak var discovBtn: UIButton!
    
    @IBAction func homeBtnPressed(_ sender: Any) {
        leadingC.constant = 0
        trailingC.constant = 0
        
        hamburgerMenuIsVisible = false
    }
    
    @IBAction func instagramPressed(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://www.instagram.com/esteelauder/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func pinterestPressed(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://www.pinterest.com/esteelauder/")! as URL, options: [:], completionHandler: nil)
    }
    @IBAction func youtubePressed(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://www.youtube.com/c/EsteeLauderEL")! as URL, options: [:], completionHandler: nil)
    }
    @IBAction func tiktokPressed(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://www.tiktok.com/@esteelauder?lang=en")! as URL, options: [:], completionHandler: nil)
    }
    @IBAction func twitterPressed(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://twitter.com/EsteeLauder?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor")! as URL, options: [:], completionHandler: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

