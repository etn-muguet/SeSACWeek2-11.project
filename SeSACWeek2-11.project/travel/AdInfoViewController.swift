//
//  AdInfoViewController.swift
//  SeSACWeek2-11.project
//
//  Created by 김현지 on 7/15/25.
//

import UIKit



class AdInfoViewController: UIViewController {
    var takeView: travleInfoTableViewController!
    
    
//    var indexPath: IndexPath = [0,0]

    @IBOutlet var adTopLabel: UILabel!
    @IBOutlet var adTextLabel: UILabel!
    
    var transTitle: String?
    
    @IBOutlet var closeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        adTopLabel.text = "광고 화면"
        adTopLabel.font = .systemFont(ofSize: 20, weight: .bold)
        adTopLabel.textAlignment = .center
        adTopLabel.textColor = .black
        closeButton.setImage(UIImage(systemName: "xmark"), for: .normal)
        closeButton.setTitle("", for: .normal)
        
        adTextLabel.numberOfLines = 0
        adTextLabel.textAlignment = .center
        
        if let resultTitle = transTitle {
            print("nil아님")
            adTextLabel.text = resultTitle
        }else {
            print("nil")
        }
        
        
        
//        let dd: travelTableViewCell
//        let gg: IndexPath.
//        let hh: travleInfoTableViewController
//        let jj = hh.travel[IndexPath.row].title
        
    
    
//        adTextLabel.text = ""
        
        

    }
    

    @IBAction func closeButtonClicked(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    
}
