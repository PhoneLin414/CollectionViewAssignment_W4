//
//  BookStoreViewController.swift
//  CollectionView_Assignment_W4
//
//  Created by SC414 on 8/31/19.
//  Copyright © 2019 phonelin. All rights reserved.
//

import UIKit

class BookStoreViewController: UIViewController {

    @IBOutlet weak var collectionView_bookstore: UICollectionView!
    
    var mBooksList : [BookVO] = BookVO.getBooks()
    let numberOfItemPerRow : CGFloat = 3
    let spacing : CGFloat = 15
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView_bookstore.dataSource = self
        collectionView_bookstore.delegate = self
        
        collectionView_bookstore.register(id: String(describing: BooksCollectionViewCell.self))
        
        let layout = collectionView_bookstore.collectionViewLayout as! UICollectionViewFlowLayout
        layout.minimumLineSpacing = 5
        let totalPadding : CGFloat = (numberOfItemPerRow - 1) * spacing
        let itemWidth = (view.frame.width - totalPadding)/numberOfItemPerRow
        let itemHeight = itemWidth * 2.3
        print("Width \(itemWidth) Height \(itemHeight)")
        layout.itemSize = CGSize(width: itemWidth
            , height: itemHeight)
       
    }
    


}

extension BookStoreViewController : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return mBooksList.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let item = collectionView_bookstore.dequeueReusableCell(withReuseIdentifier: String(describing: BooksCollectionViewCell.self), for: indexPath) as! BooksCollectionViewCell
        
        
        item.mBook = mBooksList[indexPath.row]
        
        return item
        
    }
    
    
    
    
}

extension BookStoreViewController : UICollectionViewDelegate{
    
    
    
}
