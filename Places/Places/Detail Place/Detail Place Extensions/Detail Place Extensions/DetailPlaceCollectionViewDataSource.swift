//
//  CollectionViewDataSource.swift
//  Places
//
//  Created by Victoriia Rohozhyna on 12/7/17.
//  Copyright © 2017 Victoriia Rohozhyna. All rights reserved.
//

import Foundation
import UIKit

extension DetailPlaceViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if place.photos.count == 0 {
            heightProportionalConstrainForPhotoColelctionView.isActive = false
            heightEqualConstraintForCollectionView.isActive = true
        }
        return place.photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCollectionViewCell", for: indexPath) as? PhotoCollectionViewCell
        if place.photos.count != 0 {
            cell?.photoImageView?.image = place.photos[indexPath.row]
        }
        return cell!
    }
}
