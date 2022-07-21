//
//  Trend_BuketlistCellTableViewCell.swift
//  ConcentrationMode
//
//  Created by 방선우 on 2022/07/19.
//

import UIKit

class Trend_BuketlistCellTableViewCell: UITableViewCell {
    static let identifier = "Trend_BuketlistCellTableViewCell" //이건 절대 안바뀌니까 타입인스턴스로 해줌
    
    @IBOutlet weak var checkBoxButton: UIButton!
    @IBOutlet weak var bucketlistLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
}
