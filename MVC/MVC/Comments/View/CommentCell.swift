//
//  CommentCell.swift
//  MVC
//
//  Created by Alex Skigenok on 22.11.17.
//  Copyright © 2017 AlexAlexAlex. All rights reserved.
//

import UIKit


class CommentCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    func configure(comment: Comment) {
        self.label.text = comment.name
        self.textView.text = comment.body
    }
    
    
}
