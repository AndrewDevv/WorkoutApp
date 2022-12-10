//
//  NavBarController.swift
//  WorkoutApp
//
//  Created by Андрей Антонов on 09.12.2022.
//  Copyright © 2022 Андрей Антонов. All rights reserved.
//

import UIKit

final class NavBarController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    private func configure() {
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
        navigationBar.titleTextAttributes = [
            .foregroundColor: R.Colors.titleGray ?? .gray,
            .font: R.Fonts.helveticaRegular(with: 17)
        ]
        
        navigationBar.addBottomBorder(with: R.Colors.separator!, height: 1)
    }
}
