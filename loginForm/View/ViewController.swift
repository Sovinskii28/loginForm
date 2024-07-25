//
//  ViewController.swift
//  loginForm
//
//  Created by sovinskii on 21.07.2024.
//

import UIKit

class ViewController: UIViewController {
    
    let blockView = UIView()
    
    struct AdminForm{
        let login = "Admin"
        let password = "admin"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(rgb: 0xFFF1E4)
        createMainBlock()
        createLabel()
        createTextField(frame: CGRect(x: 80, y: 380, width: 231, height: 40), placeHolder: "Login", color: UIColor(rgb: 0xBFBFBF), secureText: false)
        createTextField(frame: CGRect(x: 80, y: 430, width: 231, height: 40), placeHolder: "Password", color: UIColor(rgb: 0xBFBFBF), secureText: true)
        createEnterButton()
    }
    
//MARK: - Func Block
//Создаем главное окно
    func createMainBlock(){
        blockView.frame = CGRect(x: 0, y: 0, width: 314, height: 373)
        blockView.center = self.view.center
        blockView.backgroundColor = UIColor(rgb: 0xD9D9D9)
        blockView.layer.opacity = 0.5
        blockView.layer.shadowOffset = CGSize(width: 3, height: 6)
        blockView.layer.shadowOpacity = 0.6
        blockView.layer.shadowRadius = 3
        blockView.layer.cornerRadius = 6
        view.addSubview(blockView)
    }
    func createLabel(){
        let myLabel = UILabel(frame: CGRect(x: 90, y: 250, width: 200, height: 130))
        myLabel.text = "Login Form"
        myLabel.textAlignment = .center
        myLabel.textColor = .black
        myLabel.font = UIFont.boldSystemFont(ofSize: 32)
        view.addSubview(myLabel)
        
    }
    //Создаем поля для ввода данных
    private func createTextField(frame: CGRect, placeHolder: String, color: UIColor, secureText: Bool){
        let myTextField = UITextField()
        myTextField.frame = frame
        myTextField.placeholder = placeHolder
        myTextField.autocapitalizationType = .none
        myTextField.backgroundColor = color
        myTextField.isSecureTextEntry = secureText
        myTextField.font = UIFont.systemFont(ofSize: 26)
        myTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: myTextField.frame.height))
        myTextField.leftViewMode = .always
        self.view.addSubview(myTextField)
    }
    //блок ентера
    func createEnterButton(){
        let buttonEnter = UIButton()
        buttonEnter.frame = CGRect(x: 120, y: 510, width: 150, height: 60)
        buttonEnter.backgroundColor = UIColor(rgb: 0xC0E9C0)
        buttonEnter.setTitle("Enter", for: .normal)
        buttonEnter.titleLabel?.font = UIFont.systemFont(ofSize: 26)
        buttonEnter.setTitleColor(.black, for: .normal)
        buttonEnter.addTarget(self, action: #selector(btnToch), for: .touchUpInside)
        view.addSubview(buttonEnter)
        
    }
    @objc func btnToch(){
    
        navigationController?.pushViewController(SecondViewController(), animated: true)
    }
    
}

