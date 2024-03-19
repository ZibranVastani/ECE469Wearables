//
//  ViewController.swift
//  SipGuard
//
//  Created by Zibran Vastani on 2/22/24.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Begin", for: .normal)
        button.backgroundColor = .systemGray
        button.layer.cornerRadius = 7
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemPink
        
        self.setupUI()
        self.button.addTarget(self,action: #selector(didTapButton), for: .touchUpInside)
        
    }
    
    private func setupUI() {
            self.view.backgroundColor = .systemGreen
            self.view.addSubview(button)
            self.button.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
                button.widthAnchor.constraint(equalToConstant: 200),
                button.heightAnchor.constraint(equalToConstant: 44)
    ])}

    @objc func didTapButton(){
        let vc = ViewControllerMain()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc,animated: true,completion: nil)
    }
}

