//
//  PhotoPagingViewController.swift
//  Places
//
//  Created by Victoriia Rohozhyna on 11/22/17.
//  Copyright © 2017 Victoriia Rohozhyna. All rights reserved.
//

import UIKit

class PhotoPagingViewController: UIViewController,UICollectionViewDelegate {
    
    @IBOutlet weak var currentPhotoCollectionView: UICollectionView!
    
    @IBOutlet weak var dismissButtonOutlet: UIButton!
    
    var photoArray : [UIImage] = []
    
    var indexPath : IndexPath!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dismissButtonOutlet.transform = CGAffineTransform(rotationAngle: 45 * (.pi / 180))
        currentPhotoCollectionView.delegate = self
        currentPhotoCollectionView.dataSource = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        currentPhotoCollectionView.selectItem(at: indexPath, animated: true, scrollPosition: UICollectionViewScrollPosition.centeredHorizontally)
    }
    
    @IBAction func dismissButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}

