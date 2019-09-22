//
//  LoginViewController.swift
//  Vk&Maykov
//
//  Created by Юрий on 15/09/2019.
//  Copyright © 2019 Yuriy. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    
    @IBAction func loginButtonClick(_ sender: UIButton) {
        guard usersDataIsRight() else {
            showEnterError()
            return
        }
        performSegue(withIdentifier: "fromLoginController", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = "Авторизация"
        loginLabel.text = "Имя пользователя"
        loginTextField.placeholder = "login"
        passwordLabel.text = "Пароль"
        passwordTextField.placeholder = "password"
        loginButton.setTitle("Вход", for: .normal)
        
        let hideKeyboardGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        scrollView.addGestureRecognizer(hideKeyboardGesture)
    }
    
    @objc func hideKeyboard() {
        self.scrollView?.endEditing(true)
    }
    
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWasShown), name: UIResponder.keyboardDidShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHidden), name: UIResponder.keyboardWillHideNotification, object: nil)

    }
    
    @objc func keyboardWasShown(notification: Notification){
        let info = notification.userInfo! as NSDictionary
        let keyboardSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
        let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: keyboardSize.height, right: 0.0)
        
        scrollView.contentInset = contentInsets
        scrollView.scrollIndicatorInsets = contentInsets
    }
    
    @objc func keyboardWillHidden(notification: Notification){
        let contentInsets = UIEdgeInsets.zero
        scrollView.contentInset = contentInsets
        scrollView.scrollIndicatorInsets = contentInsets
    }
    
    func usersDataIsRight() -> Bool {
        guard let login = loginTextField.text else { return false }
        guard let password = passwordTextField.text else { return false }
        return login == "login" && password == "123456"
    }
    
    func showEnterError() {
        let alert = UIAlertController(title: "Внимание!", message: "Вы указали не верные учетные данные!", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(action)
        present(alert, animated: true)
    }
}

