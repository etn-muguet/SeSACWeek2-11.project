//
//  ViewController.swift
//  SeSACWeek2-11.project
//
//  Created by 김현지 on 7/11/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var gameTextField: UITextField!
    
    @IBOutlet var resultTextView: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultTextView.sizeToFit()
        
        /*
         반복문, 항변환, 배열(contains) + 인덱스
         
         
         13
         "13" // 3이 들었는지 알고싶어
         "13".contains("3") // Boolean
         배열 -> 인덱스 ->  박수
         */
        
//        func convertInt() ->Int {
//            var aa = gameTextField.text
//            var bb:Int? = 0
//            if aa != nil {
//                bb = Int(aa!)
//                if bb != nil {
//                    print("nil x")
//                    
//                }else {
//                    print("nil o")
//                }
//            }else {
//                print("nil oo")
//            }
//            return bb!
//        }
//        
//        var cc = convertInt()
//
//        print("\(cc)zzz")// 완전 잘됨 다른곳에서,,>>뷰디드로드에 쓰면 런타임 에러남
        
//        func convertInt() ->Int {
//            var textFieldText = gameTextField.text
//            var bb = 0
//            if textFieldText != nil {
//                var bb = Int(textFieldText!)
//                if bb != nil {
//                    print("nil x")
//                    
//                }else {
//                    print("nil o")//여기서 문제생김
//                }
//            }else {
//                print("nil oo")
//            }
//            return bb
//        }
//        
//        var cc = convertInt()
//
//        print("\(cc)zzz")//0이라고 반환됨

//        func convertInt() ->Int {
//            var textFieldText = gameTextField.text
//            var bb = 0
//            if textFieldText != nil {
//                bb = Int(textFieldText!)!
//                if bb != nil {
//                    print("nil x")
//                    
//                }else {
//                    print("nil o")
//                }
//            }else {
//                print("nil oo")
//            }
//            return bb //여기다가 bb를 쓰면 bb값이 없다고 하고 위에다가 쓰면 리턴을 안해줬다고 하고..
//        }
//        
//        var cc = convertInt()
//
//        print("\(cc)zzz")

        
    }

    
    

    
    
    @IBAction func textFieldDidEndOnExit(_ sender: UITextField) {
        
        func convertInt() ->Int {
            var aa = gameTextField.text
            var bb:Int? = 0
            if aa != nil {
                bb = Int(aa!)
                if bb != nil {
                    print("nil x")
                    
                }else {
                    print("nil o")
                }
            }else {
                print("nil oo")
            }
            return bb!
        }
        
        var cc = convertInt()
        
        print("\(cc)zzz")// 완전 잘됨
        
        var list: [Int] = []
        var strList: [String] = []
        
        for i in 1...cc {
            list.append(i)
        }
        print("\(list)....")
        
        //리스트의 요소들 다시 스트링으로 변환 스트링 배열에 추가
        
        var dd: String? = ""
        
        for j in list {
            dd = String(j)
            if dd != nil {
                strList.append(dd!)
                
            }else {
                print("nil ooo")
            }
            
        }
        print("\(strList)qqq")
        
        // 3을 입력하면 k가 "1"일 때 u는 1,2,3 총 세번을 돌고
        //다시 k가 "2"일 때 u는 1,2,3을 돈다
        //k가 "3"이 되면 u가 세번 도는 동안 k는 계속 "3"이므로 조건문에 걸려서
        //스트링배열의 인덱스 0,1,2번이 전부 박수로 대체됨
//        for k in strList {
//            print("\(k)kkk")
//            for u in list {
//                print("\(u)uuu")
//                if k.contains("3") { // 아래 수정한거랑 뭔 차인지..
//                    print("\(strList[u-1])잉")
//
//                    strList[u-1] = "👏"//???????????여기서 문제
//                }
//            }
//        
//        }
//        print("\(strList)ppppp")
        
        for u in list {
            if strList[u-1].contains("3") {
                strList[u-1] = "👏"
            }
            
        }
        
        
        print("\(strList)ppppp")
        
        
        for u in list {
            if strList[u-1].contains("6") {
                
                strList[u-1] = "👏"
            }
            
        }
        
        
        print("\(strList)ㅁㅁㅁㅁ")
        
        
        for u in list {
            if strList[u-1].contains("9") {
                
                strList[u-1] = "👏"
            }
            
        }
        
        
        print("\(strList)ppppp")
        
        let joinedString = strList.joined(separator: ", ")
        resultTextView.text = joinedString
        
        
        
        //해결과정!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1
//        func convertInt() ->Int {
//            var textFieldText = gameTextField.text
//            var bb = 0 // 나중에 bb에 담을 값이 옵셔널 인트니까 여기도 옵셔널로 선언하고 초기값 담아줘야
//            if textFieldText != nil {
//                var bb = Int(textFieldText!) //여기도 문제 위에서 var bb 해놓고 또 var,,를,,,bb = Int(textFieldText!)랑 var textFieldText = gameTextField.text 똑같이 옵셔널값을 담아주는 변수를 생성하는 과정인데 왜 bb에서만 에러가 나는건지>> bb가 처음에 '0'이라는 옵셔널이 아닌 정수로 선언이 돼서 스트링을 정수로 변환하면 옵셔널이 되니까 타입이 달라서 문제
//                if bb != nil {
//                    print("nil x")
//                    
//                }else {
//                    print("nil o")
//                }
//            }else {
//                print("nil oo")
//            }
//            return bb //여기다가 bb를 쓰면 bb값이 없다고 하고 위에다가 쓰면 리턴을 안해줬다고 하고..
//        }
//        
//        var cc = convertInt()
//
//        print("\(cc)zzz")
 
    }

}
