//
//  DetailPlaceCollectionViewDelegate.swift
//  Places
//
//  Created by Victoriia Rohozhyna on 12/14/17.
//  Copyright © 2017 Victoriia Rohozhyna. All rights reserved.
//

import Foundation
import UIKit

extension DetailPlaceViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "DetailToPhoto", sender:  indexPath)
    }
}
