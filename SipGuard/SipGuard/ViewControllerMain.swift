//
//  ViewControllerMain.swift
//  SipGuard
//
//  Created by Zibran Vastani on 2/22/24.
//

import Foundation
import UIKit
import SwiftUI

class ViewControllerMain: UIViewController {
    init(goal: Int, steps: Int) {
        let dial = DialView()
        super.init()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
    }
}
