//
//  MoreViewController.swift
//  esteeLauder2
//
//  Created by Alayna on 8/18/22.
//

import UIKit

class MoreViewController: UIViewController {


    
    @IBAction func dblWearShop(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://www.esteelauder.com/products/26415/product-catalog/makeup/makeup-collections/double-wear")! as URL, options: [:], completionHandler: nil)
    }
    @IBAction func lipShop(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://www.esteelauder.com/products/26416/product-catalog/makeup/makeup-collections/pure-color-envy")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBOutlet weak var Lead: NSLayoutConstraint!
    @IBOutlet weak var Trail: NSLayoutConstraint!
    
    var hamburgerMenuIsVisible = false
    @IBAction func hamPressed(_ sender: Any) {
        //if the hamburger menu is not visible, then move the ubeView back to old place
        if !hamburgerMenuIsVisible {
            Lead.constant = 500
            //negative because moving 150 points outward
            Trail.constant = -500
            
            hamburgerMenuIsVisible = true
        }
        else{
            //if hamburger menu IS visible, move VIEW back to original spot
            Lead.constant = 0
            Trail.constant = 0
            
            hamburgerMenuIsVisible = false
        }
        
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn, animations: {
                    self.view.layoutIfNeeded()
                }) { (animationComplete) in
                }
    }
    
    @IBAction func backBtn(_ sender: Any) {
        Lead.constant = 0
        Trail.constant = 0
        hamburgerMenuIsVisible = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}
