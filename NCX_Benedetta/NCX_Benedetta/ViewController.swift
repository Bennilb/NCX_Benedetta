//
//  ViewController.swift
//  ProvaNCX
//
//  Created by benedetta on 28/03/23.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBSegueAction func segueToMoonAnimation(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: MoonAnimation())
    }
    
    
    @IBSegueAction func segueToFireAnimation(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: FireAnimation().frame(width: 100, height: 100, alignment: .center))
    }
    
    
    @IBSegueAction func segueToFireAnimation2(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: FireAnimation().frame(width: 200, height: 200))
    }
}
