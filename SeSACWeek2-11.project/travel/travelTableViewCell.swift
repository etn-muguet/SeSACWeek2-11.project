//
//  travelTableViewCell.swift
//  SeSACWeek2-11.project
//
//  Created by 김현지 on 7/12/25.
//

import UIKit

class travelTableViewCell: UITableViewCell {
    
    
    @IBOutlet var travelImage: UIImageView!
    
    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var subtitleLabel: UILabel!
    
    @IBOutlet var heartButton: UIButton!
    
    @IBOutlet var star1: UIImageView!
    
    @IBOutlet var star2: UIImageView!
    
    @IBOutlet var star3: UIImageView!
    
    
    @IBOutlet var star4: UIImageView!
    
    @IBOutlet var star5: UIImageView!//별 다섯개 아웃렛 콜렉션??
    
    
    @IBOutlet var gradeLabel: UILabel!
    
    @IBOutlet var saveLabel: UILabel!
    
    
    @IBOutlet var adView: UIView!
    
    @IBOutlet var adLabel: UILabel!
    
    @IBOutlet var adWhiteLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
    //
    
    
    
    override func prepareForReuse() {

    }

    @IBAction func heartButtonClicked(_ sender: UIButton) {
        
        sender.isSelected.toggle()
        
//        let row: Travel

        if sender.isSelected {
//            row.like = false
            sender.setImage(UIImage(systemName: "heart"), for: .normal)
            sender.tintColor = .white
            
            
            
            
       
        }else {
            sender.tintColor = .systemRed
            sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)
          
        }
        
        
        
   
    }
    
}
