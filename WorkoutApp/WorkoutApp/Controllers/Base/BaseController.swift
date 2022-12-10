//
//  BaseController.swift
//  WorkoutApp
//
//  Created by Андрей Антонов on 09.12.2022.
//  Copyright © 2022 Андрей Антонов. All rights reserved.
//

import UIKit

enum NavBarPosition {
    case left
    case right
}

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addView()
        layoutView()
        configure()
    }
    
    
}

@objc extension BaseViewController {
    func addView() {
        
    }
    func layoutView() {
        
    }
    func configure() {
        view.backgroundColor = R.Colors.background
    }
    
    @objc func navBarLeftButtonHendler() {
        print("tapped")
    }
    @objc func navBarRightButtonHendler() {
        
    }
}

extension BaseViewController {
    func addNavBarButton(at position: NavBarPosition, with title: String) {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(R.Colors.active, for: .normal)
        button.setTitleColor(R.Colors.inactive, for: .disabled)
        button.titleLabel?.font = R.Fonts.helveticaRegular(with: 17)
        
        switch position {
        case .left:
            button.addTarget(self, action: #selector(navBarLeftButtonHendler), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(navBarRightButtonHendler), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
    }
}
