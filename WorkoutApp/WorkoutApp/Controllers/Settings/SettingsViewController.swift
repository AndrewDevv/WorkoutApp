//
//  SettingsViewController.swift
//  WorkoutApp
//
//  Created by Андрей Антонов on 09.12.2022.
//  Copyright © 2022 Андрей Антонов. All rights reserved.
//

import UIKit

class SettingsViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Settings"
        navigationController?.tabBarItem.title = R.Strings.TabBar.settings
    }
}
