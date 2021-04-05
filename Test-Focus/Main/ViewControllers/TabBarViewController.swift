//
//  TabBarViewController.swift
//  Test-Focus
//
//  Created by Gustavo Carreno on 4/4/21.
//

import UIKit

enum TabBarItem {
    case search

    var title: String {
        switch self {
        case .search    : return "Search"
        }
    }
}

final class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabBar()
    }

    private func configureTabBar() {
       
        let searchNavController = UINavigationController(rootViewController: SearchTableVC())
        searchNavController.tabBarItem = UITabBarItem(title: TabBarItem.search.title,
                                                      image: Image.by(assetId: .tabBarSearchNormal),
                                                      selectedImage: Image.by(assetId: .tabBarSearchSelected))

        viewControllers = [searchNavController]
    }
}
