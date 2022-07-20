//
//  TrendMediaSearchTableViewCell.swift
//  TrendMedia_Re
//
//  Created by 방선우 on 2022/07/20.
//

import UIKit

class TrendMediaSearchTableViewCell: UITableViewCell {

    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var releaseLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!

    func configureCell(data: Movie) {
        
        // 디자인을 짜고
        titleLabel.font = .boldSystemFont(ofSize: 15)
        titleLabel.text = data.title
        releaseLabel.text = "\(data.releaseDate) | \(data.runtime)분 | \(data.rate)점"
        overviewLabel.text =  data.overview
        overviewLabel.numberOfLines = 0
    }
    
}
