//
//  travleInfoTableViewController.swift
//  SeSACWeek2-11.project
//
//  Created by 김현지 on 7/11/25.
//

import UIKit

import Kingfisher

struct Travel {
    let title: String
    let description: String?
    let travel_image: String?
    let grade: Double?
    let save: Int?
    var like: Bool?
    let ad: Bool?
}
    
    


class travleInfoTableViewController: UITableViewController {
    
    let travel: [Travel] = [
        Travel(title: "하나우마 베이",
               description: "아름다운 자연을 감상할 수 있는 스노쿨링 명소",
               travel_image: "https://images.unsplash.com/photo-1539498508910-091b5e859b1d?q=80&w=3250&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               grade: 4.8,
               save: 6932,
               like: false,
               ad: false),
        Travel(title: "쿠알로아 랜치",
               description: "광활한 대자연에서 즐기는 다양하고 재미있는 액티비티",
               travel_image: "https://images.unsplash.com/photo-1709380733305-e65f500ab1ac?q=80&w=3264&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               grade: 4.9,
               save: 5167,
               like: true,
               ad: false),
        Travel(title: "알라 모아나 센터",
               description: "하와이 최고의 쇼핑 명소",
               travel_image: "https://images.unsplash.com/photo-1600215754990-6e7946d1e37a?q=80&w=2592&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               grade: 3.8,
               save: 8262,
               like: true,
               ad: false),
        Travel(title: "와이키키 비치",
               description: "세계적으로 유명한 하와이 최고의 해변",
               travel_image: "https://images.unsplash.com/photo-1507876466758-bc54f384809c?q=80&w=3309&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               grade: 4.2,
               save: 7892,
               like: true,
               ad: false),
        Travel(title: "하와이 여행을 가고싶다면?\n수업이 있는데 가실 생각은 아니시죠?",
               description: nil,
               travel_image: nil,
               grade: nil,
               save: nil,
               like: nil,
               ad: true),
        Travel(title: "철도 박물관",
               description: "일본 철도의 역사를 둘러볼 수 있는 박물관",
               travel_image: "https://images.unsplash.com/photo-1562326303-31bb8d0f4873?q=80&w=3264&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               grade: 2.8,
               save: 3,
               like: false,
               ad: false),
        Travel(title: "도쿄 디즈니랜드",
               description: "월트 디즈니가 창조한 동화 속 세상",
               travel_image: "https://images.unsplash.com/photo-1545580492-8859ba8323f0?q=80&w=3174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               grade: 4.7,
               save: 26076,
               like: true,
               ad: false),
        Travel(title: "도쿄 타워",
               description: "아름다운 전망을 즐길 수 있는 도쿄의 상징",
               travel_image: "https://images.unsplash.com/photo-1513407030348-c983a97b98d8?q=80&w=3272&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               grade: 4.1,
               save: 37077,
               like: false,
               ad: false),
        Travel(title: "도쿄 여행 예약은?\nXcode로 직접 예약앱을 만들면 되겠네요!",
               description: nil,
               travel_image: nil,
               grade: nil,
               save: nil,
               like: nil,
               ad: true),
        Travel(title: "동문 재래 시장",
               description: "먹거리와 생활용품을 판매하는, 제주에서 가장 큰 시장",
               travel_image: "https://images.unsplash.com/photo-1501523460185-2aa5d2a0f981?q=80&w=3331&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               grade: 4.0,
               save: 67696,
               like: true,
               ad: false),
        Travel(title: "제주 국제공항",
               description: "면세점이 있어 더욱 사랑받는, 제주 여행의 시작과 끝을 함께하는 공항",
               travel_image: "https://images.unsplash.com/photo-1556388158-158ea5ccacbd?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               grade: 4.8,
               save: 18817,
               like: true,
               ad: false),
        Travel(title: "서귀포 매일 올레 시장",
               description: "다양한 농수산물, 잡화, 먹거리를 판매하는 재래 시장",
               travel_image: "https://images.unsplash.com/photo-1511018761631-2e3eb1e4c972?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               grade: 3.9,
               save: 45399,
               like: false,
               ad: false),
        Travel(title: "성산일출봉",
               description: "유네스코 세계 자연 유산에 등재된, 제주 최고의 일출 명소",
               travel_image: "https://images.unsplash.com/photo-1622209018972-097984086b0b?q=80&w=3279&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               grade: 4.9,
               save: 44507,
               like: true,
               ad: false),
        Travel(title: "제주 비행기 최저가! 예약 문의는 취업부터!",
               description: nil,
               travel_image: nil,
               grade: nil,
               save: nil,
               like: nil,
               ad: true),
        Travel(title: "영등포 캠퍼스",
               description: "Jack님과 함께하는,\n우당탕탕 iOS 개발 성장기!",
               travel_image: "https://images.unsplash.com/photo-1679285516851-4f0cb04a3893?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
               grade: 5.0,
               save: 30,
               like: true,
               ad: false),
    ]

    
    @IBOutlet var topLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topLabel.text = "도시 상세 정보"
        topLabel.textAlignment = .center
        topLabel.font = .systemFont(ofSize: 20, weight: .bold)
        topLabel.textColor = .black
    }
 
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return travel.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "travelCell", for: indexPath) as! travelTableViewCell
        
        let row = travel[indexPath.row]
        
        if travel[indexPath.row].ad == false {
            
            cell.adView.backgroundColor = .clear
            cell.adLabel.text = ""
            cell.adWhiteLabel.text = ""
            
            if travel[indexPath.row].travel_image != nil {
                print("이미지 nil 아님")
                let url = URL(string:travel[indexPath.row].travel_image!)
                cell.travelImage.kf.setImage(with: url)
                cell.travelImage.layer.cornerRadius = 15
                cell.travelImage.contentMode = .scaleToFill
            }else {
                print("이미지 nil임")
            }
            
            if travel[indexPath.row].grade != nil {
                print("그레이드 nil 아님")
                cell.gradeLabel.text = String(travel[indexPath.row].grade!)
                cell.gradeLabel.font = .systemFont(ofSize: 15, weight: .light)
                cell.gradeLabel.textColor = .lightGray
                cell.gradeLabel.textAlignment = .left
            } else {
                print("그레이드 nil임")
            }
            
            cell.titleLabel.text = travel[indexPath.row].title
            cell.titleLabel.numberOfLines = 0
            cell.titleLabel.font = .systemFont(ofSize: 18, weight: .semibold)
            cell.titleLabel.textColor = .black
            cell.titleLabel.textAlignment = .left
            
            if travel[indexPath.row].description != nil {
                print("디스크립션 nil 아님")
                
                cell.subtitleLabel.text! = travel[indexPath.row].description!
                cell.subtitleLabel.numberOfLines = 0
                cell.subtitleLabel.font = .systemFont(ofSize: 15, weight: .medium)
                cell.subtitleLabel.textColor = .gray
                cell.subtitleLabel.textAlignment = .left
            } else {
                print("디스크립션 nil임")
            }
            
            if travel[indexPath.row].save != nil {
                print("세이브 nil 아님")
                let formatSave = travel[indexPath.row].save!.formatted()
                print(formatSave)
                cell.saveLabel.text = "저장 \(formatSave) "
                cell.saveLabel.font = .systemFont(ofSize: 15, weight: .light)
                cell.saveLabel.textColor = .lightGray
                cell.saveLabel.textAlignment = .left
                
            } else {
                print("세이브 nil임")
            }
            
            if travel[indexPath.row].grade != nil {
                print("그레이드 nil 아님")
                let grade = travel[indexPath.row].grade!
                
                if grade >= 1 && grade < 2 {
                    cell.star1.image = UIImage(systemName: "star.fill")
                    cell.star2.image = UIImage(systemName: "star.fill")
                    cell.star3.image = UIImage(systemName: "star.fill")
                    cell.star4.image = UIImage(systemName: "star.fill")
                    cell.star5.image = UIImage(systemName: "star.fill")
                    cell.star1.tintColor = .systemYellow
                    cell.star2.tintColor = .systemGray4
                    cell.star3.tintColor = .systemGray4
                    cell.star4.tintColor = .systemGray4
                    cell.star5.tintColor = .systemGray4
                    
                }else if grade >= 2 && grade < 3 {
                    cell.star1.image = UIImage(systemName: "star.fill")
                    cell.star2.image = UIImage(systemName: "star.fill")
                    cell.star3.image = UIImage(systemName: "star.fill")
                    cell.star4.image = UIImage(systemName: "star.fill")
                    cell.star5.image = UIImage(systemName: "star.fill")
                    cell.star1.tintColor = .systemYellow
                    cell.star2.tintColor = .systemYellow
                    cell.star3.tintColor = .systemGray4
                    cell.star4.tintColor = .systemGray4
                    cell.star5.tintColor = .systemGray4
                }else if grade >= 3 && grade < 4 {
                    cell.star1.image = UIImage(systemName: "star.fill")
                    cell.star2.image = UIImage(systemName: "star.fill")
                    cell.star3.image = UIImage(systemName: "star.fill")
                    cell.star4.image = UIImage(systemName: "star.fill")
                    cell.star5.image = UIImage(systemName: "star.fill")
                    cell.star1.tintColor = .systemYellow
                    cell.star2.tintColor = .systemYellow
                    cell.star3.tintColor = .systemYellow
                    cell.star4.tintColor = .systemGray4
                    cell.star5.tintColor = .systemGray4
                    
                }else if grade >= 4 && grade < 5 {
                    cell.star1.image = UIImage(systemName: "star.fill")
                    cell.star2.image = UIImage(systemName: "star.fill")
                    cell.star3.image = UIImage(systemName: "star.fill")
                    cell.star4.image = UIImage(systemName: "star.fill")
                    cell.star5.image = UIImage(systemName: "star.fill")
                    cell.star1.tintColor = .systemYellow
                    cell.star2.tintColor = .systemYellow
                    cell.star3.tintColor = .systemYellow
                    cell.star4.tintColor = .systemYellow
                    cell.star5.tintColor = .systemGray4
                    
                }else if grade == 5 {
                    cell.star1.image = UIImage(systemName: "star.fill")
                    cell.star2.image = UIImage(systemName: "star.fill")
                    cell.star3.image = UIImage(systemName: "star.fill")
                    cell.star4.image = UIImage(systemName: "star.fill")
                    cell.star5.image = UIImage(systemName: "star.fill")
                    cell.star1.tintColor = .systemYellow
                    cell.star2.tintColor = .systemYellow
                    cell.star3.tintColor = .systemYellow
                    cell.star4.tintColor = .systemYellow
                    cell.star5.tintColor = .systemYellow
                } else {
                    print("별 없음")
                }
            }
            
     
            if travel[indexPath.row].like != nil {
                print("라이크 nil 아님")
                if travel[indexPath.row].like == true {
                    cell.heartButton.setImage(UIImage(systemName: "heart.fill"), for: .normal)
                    cell.heartButton.tintColor = .systemRed
                    //cell.heartButtonClicked(cell.heartButton)//
              
                    
                } else {
                    cell.heartButton.setImage(UIImage(systemName: "heart"), for: .normal)
                    cell.heartButton.tintColor = .white
                    //cell.heartButtonClicked(cell.heartButton)//

                }
            }else {
                print("라이크 nil임")
            }

        }
   
        //광고
      
        let adViewColorRandom: [UIColor] = [.systemMint, .systemPink, .systemOrange, .systemGreen]
        
        if travel[indexPath.row].ad != nil {
            print("광고 nil아님")
            
            if travel[indexPath.row].ad == true {
                
                cell.travelImage.image = UIImage(named: "")
                cell.titleLabel.text = ""
                cell.subtitleLabel.text = ""
                cell.heartButton.setImage(UIImage(systemName: ""), for: .normal)
                cell.heartButton.tintColor = .clear
                cell.star1.image = UIImage(named: ""    )
                cell.star2.image = UIImage(named: ""    )
                cell.star3.image = UIImage(named: ""    )
                cell.star4.image = UIImage(named: ""    )
                cell.star5.image = UIImage(named: ""    )
                cell.gradeLabel.text = ""
                cell.saveLabel.text = ""

              
                cell.adView.backgroundColor = adViewColorRandom.randomElement()
                cell.adView.layer.cornerRadius = 10
                
                cell.adLabel.text = travel[indexPath.row].title
                cell.adLabel.numberOfLines = 0
                cell.adLabel.font = .systemFont(ofSize: 17, weight: .semibold)
                cell.adLabel.textColor = .black
                cell.adLabel.textAlignment = .center
                
                cell.adWhiteLabel.text = "AD"
                cell.adWhiteLabel.textColor = .black
                cell.adWhiteLabel.font = .systemFont(ofSize: 15, weight: .semibold)
                cell.adWhiteLabel.backgroundColor = .white
                cell.adWhiteLabel.textAlignment = .center
                
                
            } else {
                print("광고 nil임")
            }
        }
 
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if travel[indexPath.row].ad == false {
            return 160
        }else {
            return 80
        }
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if travel[indexPath.row].ad == false {
            
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let vc1 = sb.instantiateViewController(withIdentifier: "DetailInfoViewController") as! DetailInfoViewController
            
            vc1.transImage = URL(string:travel[indexPath.row].travel_image!)
            vc1.transTitle = travel[indexPath.row].title
            vc1.transSubTitle = travel[indexPath.row].description
            
            
            navigationController?.pushViewController(vc1, animated: true)
            
            
            
        }else {
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let vc2 = sb.instantiateViewController(withIdentifier: "AdInfoViewController") as! AdInfoViewController
            
            vc2.modalTransitionStyle = .coverVertical
            vc2.modalPresentationStyle = .fullScreen
            
            
            vc2.transTitle = travel[indexPath.row].title
            
            
            present(vc2, animated: true)
            
            
        }

    }
}
