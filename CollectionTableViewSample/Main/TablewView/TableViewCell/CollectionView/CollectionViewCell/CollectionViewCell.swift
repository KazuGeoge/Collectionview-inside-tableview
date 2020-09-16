//
//  CollectionViewCell.swift
//  CollectionTableViewSample
//
//  Created by 城島一輝 on 2020/09/09.
//  Copyright © 2020 城島一輝. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var indexLabel: UILabel!
    
    func configure(index: Int, num: Int) {
        imageView.image = UIImage(named: "girl-0")
        indexLabel.text = "池田エライザ\nファッションの\n特集\(index)"
    }
}
