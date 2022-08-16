//
//  NightViewController.swift
//  esteeLauder2
//
//  Created by Alayna on 8/14/22.
//

import UIKit

class NightViewController: UIViewController {
    @IBOutlet weak var lol: UIView!
    
    @IBOutlet weak var lead: NSLayoutConstraint!
    @IBOutlet weak var trail: NSLayoutConstraint!
    
    var hamburgerMenuIsVisible = false
    @IBAction func hambt(_ sender: Any) {
        //if the hamburger menu is not visible, then move the ubeView back to old place
        if !hamburgerMenuIsVisible {
            lead.constant = 500
            //negative because moving 150 points outward
            trail.constant = -500
            
            hamburgerMenuIsVisible = true
        }
        else{
            //if hamburger menu IS visible, move VIEW back to original spot
            lead.constant = 0
            trail.constant = 0
            
            hamburgerMenuIsVisible = false
        }
        
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn, animations: {
                    self.view.layoutIfNeeded()
                }) { (animationComplete) in
                }
    }
    @IBAction func discovBtnPressed(_ sender: Any) {
        lead.constant = 0
        trail.constant = 0
        hamburgerMenuIsVisible = false
    }
    @IBAction func shopBtnPressed(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://www.esteelauder.com/product/689/77491/product-catalog/skincare/repair-serum/advanced-night-repair-serum/synchronized-multi-recovery-complex")! as URL, options: [:], completionHandler: nil)
    }
    @IBAction func shop2BtnPressed(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://www.esteelauder.com/product/685/104163/product-catalog/skincare/eye-cream-treatment/advanced-night-repair-eye-supercharged-gel-creme/synchronized-multi-recovery-eye-cream?size=0.5_oz.")! as URL, options: [:], completionHandler: nil)
    }
    @IBOutlet weak var shopNowBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    


}
