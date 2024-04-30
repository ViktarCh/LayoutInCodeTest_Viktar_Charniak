//
//  LoginButtomView.swift
//  LayoutInCodeTest_ViktarCharniak
//
//  Created by Viktar Charniak on 4/30/24.
//

import UIKit


class LoginButtomView: UIView {
    
    private let loginButtomLabel = UIButton(frame: CGRect(x: 0, y: 0, width: 142, height: 44))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .blue
        layer.cornerRadius = 12
        
        setupLoginButtomLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLoginButtomLabel() {
        addSubview(loginButtomLabel)
        loginButtomLabel.translatesAutoresizingMaskIntoConstraints = false
        loginButtomLabel.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        loginButtomLabel.setTitle("Login", for: .normal)
        loginButtomLabel.setTitleColor(.white, for: .normal)
    }
}
