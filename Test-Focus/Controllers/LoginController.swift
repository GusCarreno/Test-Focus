//
//  LoginController.swift
//  Test-Focus
//
//  Created by Gustavo Carreno on 4/4/21.
//

import UIKit
import RxSwift
import RxCocoa

class LoginController: UIViewController, ControllerType {
    typealias ViewModelType = LoginControllerViewModel
    
    // MARK: - Properties
    private var viewModel: ViewModelType!
    private let disposeBag = DisposeBag()
    
    // MARK: - UI
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //configure(with: viewModel)
    }
    
    // MARK: - Functions
    func configure(with viewModel: ViewModelType) {
        
        emailTextfield.rx.text.asObservable()
            .ignoreNil()
            .subscribe(viewModel.input.email)
            .disposed(by: disposeBag)
        
        passwordTextfield.rx.text.asObservable()
            .ignoreNil()
            .subscribe(viewModel.input.password)
            .disposed(by: disposeBag)
        
        signInButton.rx.tap.asObservable()
            .subscribe(viewModel.input.signInDidTap)
            .disposed(by: disposeBag)
        
        viewModel.output.errorsObservable
            .subscribe(onNext: { [unowned self] (error) in
                self.presentError(error)
            })
            .disposed(by: disposeBag)
        
    }
    
    @IBAction func Login(_ sender: UIButton) {
        
        if ((emailTextfield.validateEmail(field: emailTextfield)) != nil){
            if (UITextField.validateAll(textFields: [emailTextfield, passwordTextfield])) {
                Test_Focus.Login(usuario: emailTextfield.text!, password: passwordTextfield.text!){ result in
                    
                                    switch result {
                                    case .failure(_):
                                     showAlertController(self, title: "Focus App", message: "Please verify acces", style: .one("Ok"), handler: nil)
                                    case .success(_):
                                        let vc = TabBarViewController()
                                        vc.modalPresentationStyle = .fullScreen 
                                        self.present(vc, animated: true, completion: nil)
                                      
                                        
                                    }
                                }
            }else{
                showAlertController(self, title: "Focus App", message: "Password is required", style: .one("Ok"), handler: nil)
            }
        }else{
            showAlertController(self, title: "Focus App", message: "Please enter a valid email", style: .one("Ok"), handler: nil)
        }
       
       
        
    }
    
    
}




extension LoginController {
    static func create(with viewModel: ViewModelType) -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "LoginController") as! LoginController
        controller.viewModel = viewModel
        return controller
    }
}

