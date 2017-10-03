//
//  FishItem.swift
//  fishList
//
//  Created by Tyler Knight on 10/2/17.
//  Copyright © 2017 Tyler Knight. All rights reserved.
//

import UIKit

class FishItem {
    var title: String
    var subtitle: String
    var image: UIImage?
    
    init(title: String, subtitle: String, imageName: String?) {
        self.title = title
        self.subtitle = subtitle
        if let imageName = imageName {
            if let img = UIImage(named: imageName) {
                image = img
            }
        }
    }
}
