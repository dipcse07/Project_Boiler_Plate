//
//  Enums.swift
//
//  Created by MD SAZID HASAN DIP on 12/5/21.
//

import Foundation

enum PageViews: String {
    case firstPV
    case secondPV
    case thirdPV
    case fourthPV
    case fifthPV
}

enum pageIndexNo : Int
{
    case zero = 0
    case one = 1
    case two = 2
    case three = 3
    case four = 4
    case five = 5
    
}

enum destinationVC {
    case login
    case signUp
}

enum alertView {
    case userInfoFinished
    
}
enum EthicalRatingAndIsRestricted: String {
    case A = "A"
    case A_minus = "A-"
    case A_plus = "A+"
    case B = "B"
    case B_minus = "B-"
    case c = "C"
    case diateRestrict_No = "No"
    case diateRestrict_yes = "Yes"
}
