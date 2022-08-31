//
//  PostsTableViewCell.swift
//  PostApp
//
//  Created by David Khachidze on 29.08.2022.
//

import UIKit
import SnapKit

class PostsTableViewCell: UITableViewCell {
    
    var titleLabel = UILabel()
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func createCustomCell(title: String) {
        titleLabel.backgroundColor = .clear
        titleLabel.font = UIFont.systemFont(ofSize: 20)
        titleLabel.textColor = .black
        titleLabel.text = title
        addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(20)
            make.leading.equalToSuperview().inset(20)
        }
    }

}
