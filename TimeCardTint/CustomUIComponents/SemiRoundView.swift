//
//  SemiRoundView.swift
//
//  Created by Monim Kaiser on 25/5/21.
//
import UIKit

@IBDesignable
class SemiRoundView: UIView {
    
    @IBInspectable var isCircle:Bool = false {
        didSet {
            roundCorners()
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            roundCorners()
        }
    }
    
    @IBInspectable var borderColor: UIColor = .clear {
        didSet {
            roundCorners()
        }
    }
    
    @IBInspectable var backGroundColor: UIColor = .clear {
        didSet {
            roundCorners()
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            roundCorners()
        }
    }
    
    @IBInspectable var shadowColor: UIColor = UIColor.darkGray {
       didSet {
         roundCorners()
       }
    }
    @IBInspectable var shadowOffsetWidth: CGFloat = 0.0 {
       didSet {
          roundCorners()
       }
    }
    @IBInspectable var shadowOffsetHeight: CGFloat = 1.8 {
       didSet {
          roundCorners()
       }
    }
    @IBInspectable var shadowOpacity: Float = 0.30 {
       didSet {
         roundCorners()
       }
    }
    @IBInspectable var shadowRadius: CGFloat = 3.0 {
       didSet {
         roundCorners()
       }
    }
    
    @IBInspectable var opacity: CGFloat = 1.0 {
        didSet {
            roundCorners()
        }
    }
    
    private var shadowLayer: CAShapeLayer = CAShapeLayer() {
       didSet {
          roundCorners()
       }
    }
    
    override func awakeFromNib() {
        self.roundCorners()
    }
    private func roundCorners() {
        if isCircle {
            layer.cornerRadius = frame.size.height / 2
        } else {
            layer.borderWidth = borderWidth
            layer.borderColor = borderColor.cgColor
            layer.backgroundColor = backGroundColor.cgColor
            
           // layer.masksToBounds = true
            
            //view.layer.masksToBounds = false
            shadowLayer.path = UIBezierPath(roundedRect: bounds,
                                            cornerRadius: layer.cornerRadius).cgPath
            shadowLayer.fillColor = backgroundColor?.cgColor
            shadowLayer.shadowColor = shadowColor.cgColor
            shadowLayer.shadowPath = shadowLayer.path
            shadowLayer.shadowOffset = CGSize(width: shadowOffsetWidth,
                                              height: shadowOffsetHeight)
            shadowLayer.shadowOpacity = shadowOpacity
            shadowLayer.shadowRadius = shadowRadius
            layer.insertSublayer(shadowLayer, at: 0)
        }
    }
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.roundCorners()
    }
    
}
