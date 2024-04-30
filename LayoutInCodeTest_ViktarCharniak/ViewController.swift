//
//  ViewController.swift
//  LayoutInCodeTest_ViktarCharniak
//
//  Created by Viktar Charniak on 4/29/24.
//

import UIKit

class ViewController: UIViewController {
    
    private let loginLabel = UILabel()
    private let signUpButton = UIButton()
    private let usernameLogin = UsernameView()
    private let passwordInput = PasswordView()
    private let loginButtom = LoginButtomView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        
        setupLoginlabel()
        setupSignUpButton()
        setupUsernameLogin()
        setupPasswordInput()
        setupLoginButtom()
    }
    
    private func setupLoginlabel() {
        view.addSubview(loginLabel)
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
        loginLabel.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        loginLabel.text = "LOGIN /"
        loginLabel.textColor = .black
        
        NSLayoutConstraint.activate([
            loginLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 45),
            loginLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 238),
        ])
    }
    
    private func setupSignUpButton() {
        view.addSubview(signUpButton)
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        signUpButton.titleLabel?.font = UIFont.systemFont(ofSize: 25, weight: .medium)
        signUpButton.setTitle("Sing Up", for: .normal)
        signUpButton.setTitleColor(.systemGray3, for: .normal)
        
        NSLayoutConstraint.activate([
            signUpButton.leadingAnchor.constraint(equalTo: loginLabel.trailingAnchor, constant: 5),
            signUpButton.bottomAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 5),
        ])
    }
    private func setupUsernameLogin() {
        view.addSubview(usernameLogin)
        usernameLogin.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            usernameLogin.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 45),
            usernameLogin.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 319)
        ])
    }
    
    private func setupPasswordInput() {
        view.addSubview(passwordInput)
        passwordInput.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            passwordInput.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 45),
            passwordInput.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 406)
        ])
    }
    
    private func setupLoginButtom() {
        view.addSubview(loginButtom)
        loginButtom.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            loginButtom.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -54),
            loginButtom.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 499)
        ])
    }
    
}
