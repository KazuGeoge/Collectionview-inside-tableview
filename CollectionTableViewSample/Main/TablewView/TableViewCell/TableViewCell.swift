//
//  TableViewCell.swift
//  CollectionTableViewSample
//
//  Created by 城島一輝 on 2020/09/09.
//  Copyright © 2020 城島一輝. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet private weak var collectionView: UICollectionView!
    private let dataSouce = CollectionViewDataSouce()
    
    func configure() {
//        guard let fl = collectionView.collectionViewLayout as? UICollectionViewFlowLayout else { return }
//        fl.headerReferenceSize = CGSize(width: UIScreen.main.bounds.width, height: 50)
//        
        dataSouce.configure(collectionView: collectionView)
    }
}
