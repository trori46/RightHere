//
//  CollectionViewDataSource.swift
//  Places
//
//  Created by Victoriia Rohozhyna on 12/7/17.
//  Copyright © 2017 Victoriia Rohozhyna. All rights reserved.
//

import Foundation
import UIKit

extension PhotoPagingViewController : UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCollectionViewCell", for: indexPath) as? PhotoCollectionViewCell
        cell?.photoImageView?.image = photoArray[indexPath.row]
        return cell!
    }
}
