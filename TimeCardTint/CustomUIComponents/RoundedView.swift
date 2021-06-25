//
//  RoundedView.swift

//
//  Created by MD SAZID HASAN DIP on 12/5/21.
//

import UIKit
@IBDesignable
class RoundedView: UIView {
    
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
    @IBInspectable var shadowOffsetHeight: CGFloat = 0.8 {
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
    
   @IBInspectable private var maskClip:Bool = true {
        didSet {
            roundCorners()
        }
    }
   @IBInspectable private var maskBounds:Bool = false {
        didSet {
            roundCorners()
        }
    }
    
    override func awakeFromNib() {
        self.roundCorners()
    }
    private func roundCorners() {
        
        if isCircle {
            layer.cornerRadius = self.frame.size.height/2
        }else {
            layer.cornerRadius = cornerRadius
            layer.borderWidth = borderWidth
            layer.borderColor = borderColor.cgColor
            layer.backgroundColor = backGroundColor.cgColor
            //layer.shouldRasterize = true
     
            self.clipsToBounds = maskClip
            self.layer.masksToBounds  = maskBounds
            //view.layer.masksToBounds = false
            shadowLayer.path = UIBezierPath(roundedRect: bounds,
                                            cornerRadius: cornerRadius).cgPath
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

extension UIView {
    func addshadow(top: Bool,
                   left: Bool,
                   bottom: Bool,
                   right: Bool,
                   shadowRadius: CGFloat = 2.0) {

        self.layer.masksToBounds = false
        self.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        self.layer.shadowRadius = shadowRadius
        self.layer.shadowOpacity = 1.0

        let path = UIBezierPath()
        var x: CGFloat = 0
        var y: CGFloat = 0
        var viewWidth = self.frame.width
        var viewHeight = self.frame.height

        // here x, y, viewWidth, and viewHeight can be changed in
        // order to play around with the shadow paths.
        if (!top) {
            y+=(shadowRadius+1)
        }
        if (!bottom) {
            viewHeight-=(shadowRadius+1)
        }
        if (!left) {
            x+=(shadowRadius+1)
        }
        if (!right) {
            viewWidth-=(shadowRadius+1)
        }
        // selecting top most point
        path.move(to: CGPoint(x: x, y: y))
        // Move to the Bottom Left Corner, this will cover left edges
        /*
         |☐
         */
        path.addLine(to: CGPoint(x: x, y: viewHeight))
        // Move to the Bottom Right Corner, this will cover bottom edge
        /*
         ☐
         -
         */
        path.addLine(to: CGPoint(x: viewWidth, y: viewHeight))
        // Move to the Top Right Corner, this will cover right edge
        /*
         ☐|
         */
        path.addLine(to: CGPoint(x: viewWidth, y: y))
        // Move back to the initial point, this will cover the top edge
        /*
         _
         ☐
         */
        path.close()
        self.layer.shadowPath = path.cgPath
    }
}
