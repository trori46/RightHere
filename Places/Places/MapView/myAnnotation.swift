//
//  myAnnotation.swift
//  Places
//
//  Created by Victoriia Rohozhyna on 11/27/17.
//  Copyright © 2017 Victoriia Rohozhyna. All rights reserved.
//

import UIKit
import MapKit

class CustomAnnotation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    var isOpen: Bool?
    var image: UIImage?
    var place: Place?
    
    init(place: Place) {
        self.coordinate = CLLocationCoordinate2DMake((place.location?.latitude)!, (place.location?.longitude)!)
        self.place = place
        self.title = place.name
        self.isOpen = place.isOpen
        self.image = place.photo
        if place.isOpen == true{
            subtitle = NSLocalizedString("Open now", comment: "")
        } else {
            subtitle = NSLocalizedString("Closed", comment: "")
        }
    }
}

