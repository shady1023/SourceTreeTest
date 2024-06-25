//
//  ViewController.swift
//  SourceTreeTester2
//
//  Created by ChiaYu on 2024/6/25.
//  
//

import UIKit

class ViewController: UIViewController {

    lazy var redView: UILabel = {
        let view = UILabel()
        view.text = "test"
        view.textColor = .white
        view.textAlignment = .center
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var blueView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addRedView()
        addBlueView()
    }

    func addRedView() {
        view.addSubview(redView)
        NSLayoutConstraint.activate([
            redView.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            redView.heightAnchor.constraint(equalToConstant: 100),
            redView.widthAnchor.constraint(equalToConstant: 300),
            redView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }

    func addBlueView() {
        view.addSubview(blueView)
        NSLayoutConstraint.activate([
            blueView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: 20),
            blueView.heightAnchor.constraint(equalToConstant: 100),
            blueView.widthAnchor.constraint(equalToConstant: 300),
            blueView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }
    
}

