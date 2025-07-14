//
//  magazineTableViewController.swift
//  SeSACWeek2-11.project
//
//  Created by 김현지 on 7/11/25.
//

import UIKit
import Kingfisher

struct magazine {
    let title: String
    let subtitle: String
    let photo_image: String
    let date: String // Int??
}

   

class magazineTableViewController: UITableViewController {

    
    @IBOutlet var topTitleLabel: UILabel!
    
    let magazineInfo: [magazine] = [magazine(title: "유럽 여행 쇼핑 성지, OOO은 꼭 가세요!", subtitle: "유럽의 인기 쇼핑 명소 총정리", photo_image: "https://cdn.pixabay.com/photo/2016/11/22/21/57/apparel-1850804_1280.jpg", date: "241118"),magazine(title: "현지 MZ가 알려주는 오사카 MZ 인기 스팟", subtitle: "2025 오사카 여행엔 여기!", photo_image: "https://cdn.pixabay.com/photo/2020/10/22/14/05/moon-5676124_1280.jpg", date: "250103"),magazine(title: "2025 NEWS 해외여행, 이렇게 달라졌다!", subtitle: "알고 준비하는 2025 새 여행", photo_image: "https://cdn.pixabay.com/photo/2020/03/31/10/42/park-4987140_1280.jpg", date: "250108"),magazine(title: "소중한 연차, 이때 쓰세요! 2025 황금연휴 캘린더", subtitle: "미리 세우는 2025년 여행 계획", photo_image: "https://cdn.pixabay.com/photo/2014/02/24/18/31/meeting-273857_1280.jpg", date: "241225"),magazine(title: "떠나요, 둘이서 낭만이 있는 하와이로", subtitle: "새해 첫 여행, 따듯한 하와이로!", photo_image: "https://cdn.pixabay.com/photo/2015/11/09/08/51/hawaii-1034890_1280.jpg", date: "241221"),magazine(title: "한 달 살기의 성지, 치앙마이의 재발견", subtitle: "현지인이 말하는 치앙마이의 매력", photo_image: "https://cdn.pixabay.com/photo/2016/09/15/01/57/temple-1670926_1280.jpg", date: "241218"),magazine(title: "태국 여행 전 필수! 대표 음식부터 주문 꿀팁까지", subtitle: "팟타이를 더 맛있게 주문하는 방법?", photo_image: "https://cdn.pixabay.com/photo/2020/02/20/13/25/city-4864747_1280.jpg", date: "241215"),magazine(title: "트리플 유저 PICK 2025 인기 장소 TOP 10", subtitle: "새롭게 등록된 BEST 스팟까지!", photo_image: "https://cdn.pixabay.com/photo/2020/11/12/16/55/road-5736078_1280.jpg", date: "241231"),magazine(title: "도심에서 만나는 온천 대욕장이 있는 일본 호텔", subtitle: "가까이서 즐기는 확실한 힐링", photo_image: "https://cdn.pixabay.com/photo/2022/11/15/15/37/onsen-7594228_1280.jpg", date: "241229"),magazine(title: "소원을 빌어요 🙏 새해맞이 해돋이 명소 7", subtitle: "배낭톡 in 새해 해돋이", photo_image: "https://cdn.pixabay.com/photo/2017/05/09/10/59/mount-fuji-2297961_1280.jpg", date: "250101"),magazine(title: "크리스마스 분위기 가득! 국내 일루미네이션 명소 ✨", subtitle: "요즘 SNS에서 핫한 장소 총정리", photo_image: "https://cdn.pixabay.com/photo/2014/04/10/15/37/snowman-321034_1280.jpg", date: "250101"),magazine(title: "야시장 천국 '대만 여행' 먹킷리스트", subtitle: "요즘 가장 인기 있는 메뉴는 OO", photo_image: "https://cdn.pixabay.com/photo/2017/06/11/17/03/dumplings-2392893_1280.jpg", date: "250103"),magazine(title: "핑크빛 바다가 펼쳐지는 환상의 섬, 롬복", subtitle: "잊히지 않는 TV속 그곳!", photo_image: "https://cdn.pixabay.com/photo/2019/08/17/19/13/landscape-4412784_1280.jpg", date: "250101"),magazine(title: "여행 고수가 알려주는 새벽 비행기 이용 꿀팁", subtitle: "이제 공항에서 시간 때울 걱정 끝!", photo_image: "https://cdn.pixabay.com/photo/2021/09/07/11/53/car-6603726_1280.jpg", date: "250105")]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topTitleLabel.text = "SESAC TRAVEL"
        topTitleLabel.textColor = .black
        topTitleLabel.textAlignment = .center
        topTitleLabel.font = UIFont.systemFont(ofSize: 17, weight: .medium)
    }
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 10))
            headerView.backgroundColor = .white

            let separatorView = UIView(frame: CGRect(x: 0, y: headerView.frame.height - 1, width: headerView.frame.width, height: 1))
            separatorView.backgroundColor = .lightGray
            headerView.addSubview(separatorView)
        return headerView
        
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return magazineInfo.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "magazineCell", for: indexPath) as! magazineTableViewCell
        
        let url = URL(string:magazineInfo[indexPath.row].photo_image)
        cell.magazineImage.kf.setImage(with: url)
        cell.magazineImage.layer.cornerRadius = 15
        cell.magazineImage.contentMode = .scaleToFill
        
        
        tableView.separatorColor = .white //4번과제에서 쓰기
        
        cell.titleLabel.numberOfLines = 0
        cell.titleLabel.text = magazineInfo[indexPath.row].title
//        cell.titleLabel.font = .systemFont(ofSize: 25)
        cell.titleLabel.textColor = .black
        cell.titleLabel.textAlignment = .left
        cell.titleLabel.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        
        cell.subtitleLabel.text = magazineInfo[indexPath.row].subtitle
        cell.subtitleLabel.font = .systemFont(ofSize: 15)
        cell.subtitleLabel.textColor = .lightGray
        cell.subtitleLabel.numberOfLines = 0
        cell.subtitleLabel.textAlignment = .left
        
        let dateConvert = magazineInfo[indexPath.row].date
        print(dateConvert)//"250923"
  
        let format = DateFormatter()
        print("\(format)이게먼데")
        format.dateFormat = "yyMMdd"
        
        
        var dateResult = format.date(from: dateConvert)
        
        var magazineDate = DateFormatter()
        magazineDate.dateFormat = "yy년 MM월 dd일"
        let convertString = magazineDate.string(from: dateResult!)
        
        
//        
//        if dateResult != nil {
//            print("닐이 아닙니다")
//            dateResult = dateResult!
//            
//        } else {
//            print("닐.....")
//        }
//        
//        let dateRRRR = format.string(from: dateResult)
        
        
//        
//        if let dateR = dateResult {
//            print("닐이 아님")
//        }else {
//            print("닐임")
//        }
        
//        print("\(dateResult!)결과")

        cell.dateLabel.text = "\(convertString)"
        cell.dateLabel.textColor = .lightGray
        cell.dateLabel.textAlignment = .right
        cell.dateLabel.font = .systemFont(ofSize: 12)
        

        

        cell.backgroundColor = .white
        

        
        
        
        
        return cell
        
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500
    }
}
