//
//  RoundedButton.swift

//
//  Created by MD SAZID HASAN DIP on 12/5/21.
//

import UIKit

@IBDesignable class RoundButton: UIButton {
   // MARK: - Properties
    @IBInspectable var isCircle:Bool = false {
        didSet {
           setNeedsLayout()
        }
    }
    @IBInspectable var setImageInset: Bool = false {
        didSet {
  
            setNeedsLayout()
        }
    }
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            setNeedsLayout()
        }
    }
   @IBInspectable var cornerRadius: CGFloat = 0.0 {
      didSet {
         setNeedsLayout()
      }
   }
   @IBInspectable var shadowColor: UIColor = UIColor.darkGray {
      didSet {
         setNeedsLayout()
      }
   }
   @IBInspectable var shadowOffsetWidth: CGFloat = 0.0 {
      didSet {
         setNeedsLayout()
      }
   }
   @IBInspectable var shadowOffsetHeight: CGFloat = 1.8 {
      didSet {
         setNeedsLayout()
      }
   }
   @IBInspectable var shadowOpacity: Float = 0.30 {
      didSet {
         setNeedsLayout()
      }
   }
   @IBInspectable var shadowRadius: CGFloat = 3.0 {
      didSet {
         setNeedsLayout()
      }
   }
    @IBInspectable var borderColor: UIColor = .clear {
        didSet {
            setNeedsLayout()
        }
    }
   private var shadowLayer: CAShapeLayer = CAShapeLayer() {
      didSet {
         setNeedsLayout()
      }
   }
    fileprivate func setUpView() {
        if isCircle {
            cornerRadius = frame.size.height/2
        }
        layer.cornerRadius = cornerRadius
        layer.borderWidth = borderWidth
        //layer.borderColor = borderColor.cgColor
       // layer.masksToBounds = true
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
        
        if setImageInset {
            if imageView != nil {
                imageEdgeInsets = UIEdgeInsets(top: 5, left: (bounds.width - 35), bottom: 5, right: 5)
                titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: (imageView?.frame.width)!)
            }
        }
       
    }
    
    override func layoutSubviews() {
      super.layoutSubviews()
        setUpView()
   }
}

