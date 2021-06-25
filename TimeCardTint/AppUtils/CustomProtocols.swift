//
//  CustomProtocols.swift
//
//  Created by MD SAZID HASAN DIP on 12/5/21.
//

import Foundation

protocol OnBoardCurrentPageIndexDelegate {
    func pageTrackerColorUpdate(indexNo: Int)
}

protocol DrawerResponseProtocol {
    func setCloseDrawer(close: Bool)
}

protocol QuickAddDataProtocol {
    func updatesFromSelectedQuickAdd(quickAddItem: String)
}

protocol UpdateUserInfoDataProtocol {
    func updateData(with data:String)
}
