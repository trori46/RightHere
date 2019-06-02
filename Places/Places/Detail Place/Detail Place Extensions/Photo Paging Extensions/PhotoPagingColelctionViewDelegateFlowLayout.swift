//
//  ColelctionViewDelegateFlowLayout.swift
//  Places
//
//  Created by Victoriia Rohozhyna on 12/7/17.
//  Copyright © 2017 Victoriia Rohozhyna. All rights reserved.
//

import Foundation
import UIKit

extension PhotoPagingViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: currentPhotoCollectionView.frame.width, height: currentPhotoCollectionView.frame.height)
    }
}
