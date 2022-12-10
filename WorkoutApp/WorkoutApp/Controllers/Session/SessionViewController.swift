//
//  SessionViewController.swift
//  WorkoutApp
//
//  Created by Андрей Антонов on 09.12.2022.
//  Copyright © 2022 Андрей Антонов. All rights reserved.
//

import UIKit

class SessionViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "High Intensity Cardio"
        navigationController?.tabBarItem.title = R.Strings.TabBar.session
        
        addNavBarButton(at: .left, with: "Pause")
        addNavBarButton(at: .right, with: "Finish")
    }
}
