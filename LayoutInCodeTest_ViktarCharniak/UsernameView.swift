//
//  UsernameView.swift
//  LayoutInCodeTest_ViktarCharniak
//
//  Created by Viktar Charniak on 4/30/24.
//

import UIKit


class UsernameView: UIView {
    
    private let usernameLabel = UILabel()
    private let usernameLine = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUsernameLabel()
        setupUsernameLine()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUsernameLabel() {
        addSubview(usernameLabel)
        usernameLabel.translatesAutoresizingMaskIntoConstraints = false
        usernameLabel.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        usernameLabel.text = "Username"
        usernameLabel.textColor = .systemGray
    }
    
    private func setupUsernameLine() {
        addSubview(usernameLine)
        usernameLine.translatesAutoresizingMaskIntoConstraints = false
//        usernameLine.widthAnchor.constraint(equalToConstant: 278);
//        usernameLine.heightAnchor.constraint(equalToConstant: 2)
        usernameLine.text = "Line"
        usernameLine.textColor = .black
        
        NSLayoutConstraint.activate([
            usernameLine.leadingAnchor.constraint(equalTo: leadingAnchor),
            usernameLine.topAnchor.constraint(equalTo: usernameLabel.bottomAnchor, constant: 6)
        ])
    }
}
