//
//  BookVo.swift
//  CollectionView_Assignment_W4
//
//  Created by SC414 on 8/31/19.
//  Copyright © 2019 phonelin. All rights reserved.
//

import Foundation
import UIKit

class BookVO{
    var title : String = ""
    var authorName : String = ""
    var bookImage : UIImage = UIImage()
    
    init(title:String,authorName:String,bookImage:UIImage){
        self.title = title
        self.authorName = authorName
        self.bookImage = bookImage
    }
    
    
}

//Image Literal
extension BookVO {
    static func getBooks() -> [BookVO] {
        return [
            .init(title: "Rich Dad Poor Dad", authorName: "Robert T. Kiyosaki", bookImage: #imageLiteral(resourceName: "richdadpoordad")),
            .init(title: "The Lean StartUp", authorName: "Eric Ries", bookImage: #imageLiteral(resourceName: "thelanestartup")),
            .init(title: "The 4hour Work Week", authorName: "Timothy Ferriss", bookImage: #imageLiteral(resourceName: "the4hour")),
            
            .init(title: "The subtle art of not giving a fuck", authorName: "Mark Manson", bookImage: #imageLiteral(resourceName: "thesubtleartofnotgivingafuck")),
            .init(title: "The Moden Alphabet", authorName: "Charles Duhigg", bookImage: #imageLiteral(resourceName: "thepowerofhabit")),
            .init(title: "Think and grow rich", authorName: "Napoleon Hill", bookImage: #imageLiteral(resourceName: "thinkandgrowrich")),
            .init(title: "The subtle art of not giving a fuck", authorName: "Mark Manson", bookImage: #imageLiteral(resourceName: "thesubtleartofnotgivingafuck")),
            .init(title: "The Moden Alphabet", authorName: "Charles Duhigg", bookImage: #imageLiteral(resourceName: "thepowerofhabit")),
            .init(title: "Think and grow rich", authorName: "Napoleon Hill", bookImage: #imageLiteral(resourceName: "thinkandgrowrich")),
            
        ]
    }
}
