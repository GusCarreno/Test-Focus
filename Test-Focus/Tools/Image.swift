//
//  Image.swift
//  Test-Focus
//
//  Created by Gustavo Carreno on 4/4/21.
//
import UIKit

struct Image {
    
    static func by(assetId: ImageAssetId) -> UIImage? {
        return UIImage(named: assetId.rawValue)
    }
}

enum ImageAssetId: String, CaseIterable {

    //TabBar
    case tabBarDiscoverNormal, tabBarFavoritesNormal, tabBarSearchNormal
    case tabBarDiscoverSelected, tabBarFavoritesSelected, tabBarSearchSelected

    //Common
    case disclosureIndicator, iconReleaseFrame
}
