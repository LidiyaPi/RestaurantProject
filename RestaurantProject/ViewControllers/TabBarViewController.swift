//
//  TabBarViewController.swift
//  RestaurantProject
//
//  Created by Лидия Пятаева on 14.06.2024.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupControllers()
        selectedIndex = 0
        setTabBarAppearance()
    }
    
    private func setupControllers() {
        
        let mainVC = UINavigationController(rootViewController: MainViewController())
        let purshaseVC = PurchaseViewController()
        let profileVC = UINavigationController(rootViewController: ProfileViewController())
      
        
        viewControllers = [
            generateVC(viewController: mainVC,
                       title: "Главная",
                       image: UIImage(named: "главная")),
            generateVC(viewController: purshaseVC,
                       title: "Корзина",
                       image: UIImage(named: "корзина")),
            generateVC(viewController: profileVC,
                       title: "Аккаунт",
                       image: UIImage(named: "аккаунт"))
        ]
    }
    
    private func generateVC(viewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.image = image
        viewController.tabBarItem.title = title
        return viewController
    }
    
    private func setTabBarAppearance() {
        self.tabBar.itemPositioning = .fill
    }
    

    }
    
