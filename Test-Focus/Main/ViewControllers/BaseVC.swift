//
//  BaseVC.swift
//  Test-Focus
//
//  Created by Gustavo Carreno on 4/4/21.
//

import UIKit
import MarkerKit
import RxSwift

class BaseVC: UIViewController {

    let activityIndicatorView = UIActivityIndicatorView(style: .gray)

    let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        if #available(iOS 11.0, *) {
            navigationController?.navigationBar.prefersLargeTitles = false
        }

        setupViewAndConstraints()
        setupActivityIndicator()
        bind()
    }

    func setupViewAndConstraints() {

    }

    private func setupActivityIndicator() {
        view.addSubview(activityIndicatorView)

        activityIndicatorView.mrk.centerX(to: view)
        activityIndicatorView.mrk.centerY(to: view, relation: .equal, constant: -100)
    }

    func bind() {

    }

    final func showError(message: String) {
        showAlertController(self, title: "Error", message: message, style: .one("Ok"), handler: nil)
    }
}

