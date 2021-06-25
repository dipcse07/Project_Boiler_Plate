//
//  ThemeUIView.swift
//
//  Created by Monim Kaiser on 19/5/21.
//

import Foundation
import UIKit

class ThemeUIView: UIView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeUIView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        customizeUIView()
    }
    
    private func customizeUIView() {
        backgroundColor = UIColor(named: "AppthemeColor")
    }
    
}
