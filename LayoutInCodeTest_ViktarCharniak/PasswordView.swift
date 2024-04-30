//
//  PasswordView.swift
//  LayoutInCodeTest_ViktarCharniak
//
//  Created by Viktar Charniak on 4/30/24.
//

import UIKit


class PasswordView: UIView {
    
    private let passwordLabel = UILabel()
    private let passwordLine = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupPasswordLabel()
        setupPasswordLine()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupPasswordLabel() {
        addSubview(passwordLabel)
        passwordLabel.translatesAutoresizingMaskIntoConstraints = false
        passwordLabel.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        passwordLabel.text = "Username"
        passwordLabel.textColor = .systemGray
    }
    
    private func setupPasswordLine() {
        addSubview(passwordLine)
        passwordLine.translatesAutoresizingMaskIntoConstraints = false
//        usernameLine.widthAnchor.constraint(equalToConstant: 278);
//        usernameLine.heightAnchor.constraint(equalToConstant: 2)
        passwordLine.text = "Line"
        passwordLine.textColor = .black
        
        NSLayoutConstraint.activate([
            passwordLine.leadingAnchor.constraint(equalTo: leadingAnchor),
            passwordLine.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 6)
        ])
    }
}

