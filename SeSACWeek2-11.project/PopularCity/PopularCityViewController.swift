//
//  PopularCityViewController.swift
//  SeSACWeek2-11.project
//
//  Created by 김현지 on 7/17/25.
//

import UIKit
import Kingfisher

class PopularCityViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
 
    var popularCity: [City] = CityInfo().city
    
    @IBOutlet var myCollectionView: UICollectionView!
    @IBOutlet var mySegmentedControl: UISegmentedControl!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
        
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        
        let xib = UINib(nibName: "PopularCityCollectionViewCell", bundle: nil)
        myCollectionView.register(xib, forCellWithReuseIdentifier: "PopularCityCollectionViewCell")
        
        mySegmentedControl.removeAllSegments()
        mySegmentedControl.insertSegment(withTitle: "전체", at: 0, animated: false)
        mySegmentedControl.insertSegment(withTitle: "국내", at: 1, animated: false)
        mySegmentedControl.insertSegment(withTitle: "해외", at: 2, animated: false)

//        mySegmentedControl.addTarget(self, action: #selector(segmentChanged), for: .valueChanged)
        
       
        
        
    }
    @objc func segmentChanged (_ segment: UISegmentedControl) {
        print(#function)
//        popularCity[segment.tag].domestic_travel
        
        var domestic: [City] = []
//        let dd = city[0].domestic_travel

        let segmentIndex = mySegmentedControl.selectedSegmentIndex
        print(segmentIndex)
        
        if segmentIndex == 1 {
            for i in popularCity {
//                dump(i)
                if i.domestic_travel == true {
                    domestic.append(i)
//                    dump(domestic)
                    

                }
            }
        }
        
        popularCity = domestic
        dump(popularCity)
        myCollectionView.reloadData()
//        if segment.tag == 0 {
//         
//        }else if segment.tag == 1 {
//            
//            for i in popularCity {
//                if i.domestic_travel == true {
//                    domestic.append(i)
//                    
//                    myCollectionView.reloadData()
//                    
//                }
//            }
//                print(domestic)
//            
//            
//        }else {
//            
//        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print(#function)
        
        return popularCity.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print(#function)

        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PopularCityCollectionViewCell", for: indexPath) as! PopularCityCollectionViewCell
        
        let url = URL(string: popularCity[indexPath.row].city_image)
        cell.cityImage.kf.setImage(with: url)
        cell.cityImage.contentMode = .scaleAspectFill
        
        cell.cityNameLabel.text = "\(popularCity[indexPath.row].city_name) | \(popularCity[indexPath.row].city_english_name)"
        cell.cityNameLabel.font = .systemFont(ofSize: 15, weight: .semibold)
        cell.cityNameLabel.numberOfLines = 0
        cell.cityNameLabel.textAlignment = .center
        
        cell.citySubtitleLabel.text = popularCity[indexPath.row].city_explain
        cell.citySubtitleLabel.font = .systemFont(ofSize: 13, weight: .medium)
        cell.citySubtitleLabel.numberOfLines = 0
        cell.citySubtitleLabel.textAlignment = .center
        //---------------------------------------------
        //셀 2개!!
        let layout = UICollectionViewFlowLayout()//인스펙터에서 사이즈 조절한 것과 같은 기능
        let deviceWidth = UIScreen.main.bounds.width//디바이스의 너비(유동적으로 달라짐)
        let cellWidth = deviceWidth - ( 30 * 2) - 20
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: cellWidth/2, height: cellWidth/1.6)//비율에 맞춰서 잡기
        layout.minimumInteritemSpacing = 20 //셀 사이 가로간격 정수값
        layout.minimumLineSpacing = 30 //셀 사이 세로
        layout.sectionInset = UIEdgeInsets(top: 10, left: 30, bottom: 10, right: 30)//디바이스와의 간격
        
        myCollectionView.collectionViewLayout = layout
        //--------------------------------------------
        mySegmentedControl.addTarget(self, action: #selector(segmentChanged), for: .valueChanged)
        
        
        return cell
        
    }
    

}
