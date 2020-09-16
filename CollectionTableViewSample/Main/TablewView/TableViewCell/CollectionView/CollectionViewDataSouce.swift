//
//  CollectionViewDataSouce.swift
//  CollectionTableViewSample
//
//  Created by 城島一輝 on 2020/09/09.
//  Copyright © 2020 城島一輝. All rights reserved.
//

import UIKit

class CollectionViewDataSouce: NSObject {

    
    func configure(collectionView: UICollectionView) {
        collectionView.register(UINib(nibName: "CollectionViewCell", bundle:nil), forCellWithReuseIdentifier: "CollectionViewCell")
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
}
extension CollectionViewDataSouce: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 20
    }
    
    // アイテムの表示内容（UICollectionViewDataSource が必要）
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell = UICollectionViewCell()
        
        if let collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell {
            collectionViewCell.configure(index: indexPath.row, num: 1)
            cell = collectionViewCell
        }
        return cell
    }
}

extension CollectionViewDataSouce: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 250)
    }
}

extension CollectionViewDataSouce: UICollectionViewDelegate {
    // アイテムタッチ時の処理（UICollectionViewDelegate が必要）
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}
