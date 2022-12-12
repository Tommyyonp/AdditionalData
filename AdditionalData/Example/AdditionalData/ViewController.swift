//
//  ViewController.swift
//  AdditionalData
//
//  Created by 97111661 on 12/12/2022.
//  Copyright (c) 2022 97111661. All rights reserved.
//

import UIKit
import AdditionalData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupUI() {
        view.backgroundColor = .white
        
        let but = UIButton()
        but.addTarget(self, action: #selector(butDidTap), for: .touchUpInside)
        but.setTitleColor(UIColor.red, for: .normal)
        but.setTitle("Additional Data", for: .normal)
        view.addSubview(but)
//        but.snp.makeConstraints{(make) in
//            make.centerX.centerY.equalToSuperview()
//            make.height.equalTo(40)
//        }
        but.translatesAutoresizingMaskIntoConstraints = false
        but.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        but.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        but.heightAnchor.constraint(equalToConstant: 40).isActive = true
//        but.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        
    }
    
    @objc func butDidTap() {
        let vc = AdditionalDataVC()
        navigationController?.pushViewController(vc, animated: true)
    }

}
