//
//  HydrateViewController.swift
//  esteeLauder2
//
//  Created by Alayna on 8/15/22.
//

import UIKit
import SwiftUI

class HydrateViewController: UIViewController {

    
    @IBOutlet weak var hydrating: UILabel!
    
    @IBOutlet weak var fast: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        hydrating.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
        fast.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
        // Do any additional setup after loading the view.
    }
    


}
