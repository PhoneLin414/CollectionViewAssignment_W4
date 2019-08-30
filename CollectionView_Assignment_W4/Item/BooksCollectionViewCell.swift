//
//  BooksCollectionViewCell.swift
//  CollectionView_Assignment_W4
//
//  Created by SC414 on 8/31/19.
//  Copyright © 2019 phonelin. All rights reserved.
//

import UIKit

class BooksCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var img_book: UIImageView!
    @IBOutlet weak var lbl_bookname: UILabel!
    @IBOutlet weak var lbl_authorname: UILabel!
    
    
    var mBook : BookVO! {
        didSet {
            img_book.image = mBook.bookImage
            lbl_bookname.text = mBook.title
            lbl_authorname.text = mBook.authorName
        }
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        
        
    }

}
