//
//  RoundedTextView.swift

//
//  Created by MD SAZID HASAN DIP on 17/5/21.
//

import UIKit
@IBDesignable
class RoundedTextView: UITextView {
    
    @IBInspectable var cornerRadius: CGFloat = 3.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var shadowColor: UIColor = UIColor.darkGray {
       didSet {
     
       }
    }
    @IBInspectable var shadowOffsetWidth: CGFloat = 0.0 {
       didSet {
         
       }
    }
    @IBInspectable var shadowOffsetHeight: CGFloat = 1.8 {
       didSet {
       
       }
    }
    @IBInspectable var shadowOpacity: Float = 0.30 {
       didSet {
         
       }
    }
    @IBInspectable var shadowRadius: CGFloat = 3.0 {
       didSet {
         
       }
    }
    private var shadowLayer: CAShapeLayer = CAShapeLayer() {
       didSet {
         
       }
    }
    
    override func awakeFromNib() {
        self.setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }
    
//    override func textRect(forBounds bounds: CGRect) -> CGRect {
//        return CGRect(x: bounds.origin.x + 25, y: bounds.origin.y, width: bounds.width, height: bounds.height)
//    }
//
//    override func editingRect(forBounds bounds: CGRect) -> CGRect {
//        return CGRect(x: bounds.origin.x + 25, y: bounds.origin.y, width: bounds.width, height: bounds.height)
//    }
    
    func setupView() {
        self.layer.cornerRadius = cornerRadius
        self.layer.borderWidth = borderWidth
       // self.layer.borderColor = UIColor(red:226/255,green: 230/255, blue: 234/255,alpha: 1.0).cgColor
        //self.clipsToBounds = true
        layer.shadowColor = shadowColor.cgColor
        layer.shadowOffset.height = shadowOffsetWidth
        layer.shadowOffset.width = shadowOffsetWidth
        layer.shadowOpacity = shadowOpacity
        layer.shadowRadius = shadowRadius
       // self.clipsToBounds = false
        //self.layer.masksToBounds = false
    }
    
}

