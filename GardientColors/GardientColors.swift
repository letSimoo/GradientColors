//  Creating GradientColor inside Stroyboard

//  You can add more colors to the layer.colors array as much as you can

//  Created by iSimoo on 8/2/21 . . Happy Coding.

import UIKit

@IBDesignable

class GradientColors : UIView {
    
    @IBInspectable var FirstColor : UIColor = .clear {
        didSet { updateView() }
    }
    
    @IBInspectable var SecondColor : UIColor = .clear {
        didSet { updateView() }
    }
    
    
    override class var layerClass: AnyClass {
        get{ return CAGradientLayer.self }
    }
    
    func updateView() {
        let layer = self.layer as! CAGradientLayer
        layer.colors = [FirstColor.cgColor, SecondColor.cgColor]
        //        layer.locations = [0.5]
    }
    
    
    
}
