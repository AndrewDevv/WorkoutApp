//
//  Resources.swift
//  WorkoutApp
//
//  Created by Андрей Антонов on 09.12.2022.
//  Copyright © 2022 Андрей Антонов. All rights reserved.
//

import UIKit

enum R {
    enum Colors {
        static var active = UIColor(hex: "#447BFE")
        static var inactive = UIColor(hex: "#929DA5")
        
        static var separator = UIColor(hex: "#E8ECEF")
        static var background = UIColor(hex: "#F8F9F9")
        
        static var titleGray = UIColor(hex: "#545C77")
    }
    
    enum Strings {
        enum TabBar {
            static let overview = "overview"
            static let session = "session"
            static let progress = "progress"
            static let settings = "settings"
        }
    }
    
    enum Images {
        enum TabBar {
            static let overview = UIImage(named: "House")
            static let session = UIImage(named: "Clock")
            static let progress = UIImage(named: "AnalyticsBars")
            static let settings = UIImage(named: "Gear")
        }
    }
    
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            return UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}
