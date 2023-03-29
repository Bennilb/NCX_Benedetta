//
//  GetStartedButton.swift
//  ProvaNCX
//
//  Created by benedetta on 28/03/23.
//

import UIKit

class GetStartedButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.backgroundColor = UIColor(red: 25/255, green: 60/255, blue: 80/255, alpha: 1).cgColor
        layer.cornerRadius = 14

    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
