//
//  WhiteTintUIButton.swift
//
//  Created by Monim Kaiser on 8/6/21.
//

import Foundation
import UIKit

class WhiteTintUIButton: UIButton {
    
    required init?(coder aCoder: NSCoder) {
        super.init(coder: aCoder)
        
        customizeUIView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        customizeUIView()
    }
    
    private func customizeUIView() {
        imageView?.image = imageView?.image?.withRenderingMode(.alwaysTemplate)
        imageView?.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
}
