//
//  ViewController.swift
//  SourceTreeTester2
//
//  Created by ChiaYu on 2024/6/25.
//  
//

import UIKit

class ViewController: UIViewController {

    lazy var redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addRedView()
    }

    func addRedView() {
        view.addSubview(redView)
        NSLayoutConstraint.activate([
            redView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            redView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            redView.heightAnchor.constraint(equalToConstant: 100),
            redView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor)
        ])
    }

}

