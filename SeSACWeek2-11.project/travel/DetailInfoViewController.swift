//
//  DetailInfoViewController.swift
//  SeSACWeek2-11.project
//
//  Created by 김현지 on 7/15/25.
//

import UIKit
import Kingfisher

class DetailInfoViewController: UIViewController {

    @IBOutlet var infoTopLabel: UILabel!
    @IBOutlet var InfoTitleLabel: UILabel!
    @IBOutlet var infoImage: UIImageView!
    
    @IBOutlet var infoSubTitleLabel: UILabel!
    @IBOutlet var infoCloseButton: UIButton!
    
    var transImage: URL?
    var transTitle: String?
    var transSubTitle: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let resultTitle = transTitle {
            print("nil x")
            InfoTitleLabel.text = resultTitle
        }else {
            print("nil")
        }
        
        if let resultSubTitle = transSubTitle {
            print("nil xx")
            infoSubTitleLabel.text = resultSubTitle
        }else {
            print("nil")
        }
        
        InfoTitleLabel.font = .systemFont(ofSize: 30, weight: .bold)
        InfoTitleLabel.numberOfLines = 0
        InfoTitleLabel.textAlignment = .center
        
        infoSubTitleLabel.font = .systemFont(ofSize: 25, weight: .semibold)
        infoSubTitleLabel.numberOfLines = 0
        infoSubTitleLabel.textAlignment = .center
        
        if let resultImage = transImage {
            print("nil xxx")
            infoImage.kf.setImage(with: resultImage)
        } else {
            print("nil")
        }
        infoImage.contentMode = .scaleToFill
        infoImage.layer.cornerRadius = 10
        
        infoCloseButton.setTitle("다른 관광지 보러가기", for: .normal)
        infoCloseButton.backgroundColor = .systemBlue
        infoCloseButton.setTitleColor(.white, for: .normal)
        infoCloseButton.layer.cornerRadius = 20

    }
    

    @IBAction func closeButtonClicked(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
}
