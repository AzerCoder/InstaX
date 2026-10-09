//
//  Post.swift
//  InstaX
//
//  Created by A'zamjon Abdumuxtorov on 10/11/23.
//

import Foundation

class Post{
    var fullname: String? = ""
    var per_Img: String? = ""
    var post_Img: String? = ""
    var post_Img2: String? = ""
    
    init(fullname: String? = nil, per_Img: String? = nil, post_Img: String? = nil, post_Img2: String? = nil) {
        self.fullname = fullname
        self.per_Img = per_Img
        self.post_Img = post_Img
        self.post_Img2 = post_Img2
    }
}
