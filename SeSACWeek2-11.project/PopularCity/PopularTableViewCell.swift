//
//  PopularTableViewCell.swift
//  SeSACWeek2-11.project
//
//  Created by 김현지 on 7/16/25.
//

import UIKit

class PopularTableViewCell: UITableViewCell {

    @IBOutlet var cityImage: UIImageView!
    
    @IBOutlet var subtitleLabel: UILabel!
    @IBOutlet var subtitleView: UIView!
    @IBOutlet var cityName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
    
}
