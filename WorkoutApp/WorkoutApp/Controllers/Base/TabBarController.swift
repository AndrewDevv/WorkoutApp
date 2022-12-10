//
//  TabBarController.swift
//  WorkoutApp
//
//  Created by Андрей Антонов on 09.12.2022.
//  Copyright © 2022 Андрей Антонов. All rights reserved.
//

import UIKit

enum Tabs: Int {
    case overview
    case session
    case progress
    case settings
}

final class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
//        tabBar.tintColor = R.Colors.active
//        tabBar.barTintColor = R.Colors.inactive
        tabBar.backgroundColor = .white
        tabBar.layer.borderColor = R.Colors.separator?.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let overviewController = OverviewViewController()
        let sessionController = SessionViewController()
        let progressController = ProgressViewController()
        let settingsController = SettingsViewController()
        
        let overviewNavigation = NavBarController(rootViewController: overviewController)
        let sessionNavigation = NavBarController(rootViewController: sessionController)
        let progressNavigation = NavBarController(rootViewController: progressController)
        let settingsNavigation = NavBarController(rootViewController: settingsController)
        
        overviewNavigation.tabBarItem = UITabBarItem(
            title: R.Strings.TabBar.overview,
            image: R.Images.TabBar.overview,
            tag: Tabs.overview.rawValue
        )
        sessionNavigation.tabBarItem = UITabBarItem(
            title: R.Strings.TabBar.session,
            image: R.Images.TabBar.session,
            tag: Tabs.session.rawValue
        )
        progressNavigation.tabBarItem = UITabBarItem(
            title: R.Strings.TabBar.progress,
            image: R.Images.TabBar.progress,
            tag: Tabs.progress.rawValue
        )
        settingsNavigation.tabBarItem = UITabBarItem(
            title: R.Strings.TabBar.settings,
            image: R.Images.TabBar.settings,
            tag: Tabs.settings.rawValue
        )
        
        setViewControllers(
            [
                overviewNavigation,
                sessionNavigation,
                progressNavigation,
                settingsNavigation
            ],
            animated: false
        )
    }
    
}
