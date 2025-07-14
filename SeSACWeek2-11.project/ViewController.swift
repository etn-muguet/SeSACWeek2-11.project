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
        
//        if let gameText = gameTextField.text, let int369 = Int(gameText) {
//            print("결과는: \(int369) ")
//        } else {
//            print("다시 입력하세요")
//        }
//        
//        if game369 != nil {
//            var game369 = game369!
//            var intGame369 = Int(game369)
//            if list[intGame369! - 1] == intGame369! {
//                resultTextView.text = "결과는 \(intGame369!)"
//            }
//        } else {
//            print("nil")
//        }
//        if let game369 = gameText {
//            print("\(game369) nil이 아님")
//            if let int369 = Int(game369) {
//                print("\(int369)nil이 아님")
//                if int369 == list[int369 - 1] {
//                    resultTextView.text = String(int369)
//                } else {
//                    print("흠")
//                }
//            } else {
//                print("nil")
//            }
//        } else {
//            print("nil...")
//        }
//       if let
        
        
    }
    @IBAction func textFieldDidEndOnExit(_ sender: UITextField) {
        //입력받은 숫자 1부터 반복문으로 나열해서 배열 만들어
        //1부터 십의자리/일의자리 369에 해당하는지 조건문으로 확인 후
        //해당되는것만 박수 이모지로 대체
        var list: [String] = []
        var list2: [Int] = []

        if let gameText = gameTextField.text, let int369 = Int(gameText) {
            print("입력값: \(int369) ")
            
            var clap = "👏"
            //int369 == 9
            for i in 1...int369 {
                list2.append(i)
                
                
                
                
                
            }
            print("리스트 \(list2)")
            
            let a = int369 / 10 //십의자리
            let b = int369 % 10 //일의자리
            print("\(a), \(b)")
            
            
//            if a > 0 {
//                if a % 3 == 0 || b % 3 == 0 {
//                    
//                    print("십의자리 나눔")
//                    resultTextView.text = String(int369)
//                    for j in list2 {
//                        if a % 3 == 0 {
//                            list2[a-1] = 888
//                            print("888로 대체?\(list2)")
//                        }else if b % 3 == 0 {
//                            list2[b-1] = 999
//                            print("999로 대체")
//                            
//                        }
//                    }
//                }
//                if b % 3 == 0 {
//                    print("십/일의자리 나눔")
//                    resultTextView.text = String(int369)
//                    for j in list2 {
//                        if j == 3 || j == 6 || j == 9 {
//                            list2[j-1] = 999
//                            print("999로 대체?\(list2)")
//                        }else {
//                            print("999 대체 안됨")
//                            
//                        }
//                    }
//                    
//                    
//                }
//            }
//            if b > 0 {
//                if b % 3 == 0 {
//                    print("일의자리 나눔")
//                    //                   var gameText = "" + clap
//                    resultTextView.text = String(int369)
//                    for i in list2 {
//                        if i == 3 || i == 6 || i == 9 {
//                            list2[i-1] = 777
//                            print("777로 대체?\(list2)")
//                        }else {
//                            print("777 대체 안됨")
//                            
//                        }
//                    }
//                    
//                    
//                }
//            }else {
//                print("3,6,9 아님")
//            }
                
               
            
            
//            for i in 1...int369 {
//                if int369 > 0 && int369 < 10 {
//                    if int369 / 3 == 0 {
//                        print("결과는 \(int369)")
//                        for i in 1...int369 {
//                            list2.append(i)
//                        }
//                    }
//                }else if int369 >= 10 {
//                    if a == 3 || a == 6 || a == 9 {
//                        
//                    }
//                }
//            }
            
            //43 예시
//            var minusint369 = int369
//            
//            while minusint369 >= 10 {
//                minusint369 = minusint369 - 10
//            }
//            print("10이하로 뺀 값 \(minusint369)")
////            list2.append(i)
//            for i in 1...int369 {
//                if minusint369 == 0 || minusint369 == 3 || minusint369 == 6 || minusint369 == 9 {
//                    
//
//                }
//                
//            }
            
            
//            for i in 1...int369 {
//                if gameText == "3" || gameText == "6" || gameText == "9" {
//                    var clapText = gameText
//                    clapText = clap
//                    list.append(clapText)
//                    print("3,6,9 \(list)")
//                    
//                    
//                }else {
//                    var j = String(i)
//                    list.append(j)
//                    print("3,6,9 아닌\(list)")//안됨
//
//                }
//            }
//            print(list)
            
            //
//            var num = 0
//            var minusint369 = int369
//            while minusint369 >= 10 {
//                minusint369 = minusint369 - 10
//            }
//            print("10이하로 뺀 값 \(minusint369)")
//            
//            var list: [String] = []
//        
//            print(list)
//            
//            var clap = "👏"
//            var strMinusint369 = String(minusint369)
//            strMinusint369 = clap
//            
//            if minusint369 == 3 || minusint369 == 6 || minusint369 == 9 {
         
//            for a in 1...int369 {
                
//                if  minusint369 == 3 || minusint369 == 6 || minusint369 == 9 {
//                    var strMinusint369 = String(minusint369)
//                    strMinusint369 = clap
//                    list.append(clap)
//                    print(list)
//                    
//                    print(strMinusint369)
//                }else if minusint369 == 0  {
//                    
//                }else if minusint369 == 32345{
//                    
//                }else {
//                   
//                    list.append()
//                    print(list)
//                    
//                }
                    
                
//            }
            
//            for a in 1...int369 {
//                if a < 10 && a > 0 {
//                    
//                } else {
//                 var num = 0
//                 var a = a - 10
//                print(a)
//                }
//            }
//            for a in 1...int369 {
//                if (int369 % 10) == 3 || (int369 % 10) == 6 || (int369 % 10) == 9 {
//                    for a in 1...int369 {
//                        print(a)
//                        list.append(a)
//
//                        if (a % 10) == 3 || (a % 10) == 6 || (a % 10) == 9 || (a / 10) == 3 || (a / 10) == 6 || (a / 10) == 9  {
//                            var a = "👏"
//                            resultTextView.text = "결과: \(list)"
//                        }
//                    }
//                }else if (int369 % 10) == 6 {
//                    for b in 1...int369 {
//                        if b % 10 == 6 {
//                            var b = "👏"
//                            print(b)
//                            resultTextView.text = "결과 \(b)"
//                        }
//                        
//                    }
//                }else if (int369 % 10) == 9 {
//                    for c in 1...int369 {
//                        if c % 10 == 9 {
//                            var c = "👏"
//                            print(c)
//                            resultTextView.text = "결과 \(c)"
//                        }
//                        
//                    }
//                }else if (int369 / 10) == 3 {
//                    for d in 1...int369 {
//                        if d / 10 == 3 {
//                            var d = "👏"
//                            print(d)
//                            resultTextView.text = "결과 \(d)"
//                        }
//                        
//                    }
//                    
//                }else if (int369 / 10) == 6 {
//                    for e in 1...int369 {
//                        if e / 10 == 6 {
//                            var e = "👏"
//                            print(e)
//                            resultTextView.text = "결과 \(e)"
//                        }
//                        
//                    }
//                    
//                }else if (int369 / 10) == 9 {
//                    for f in 1...int369 {
//                        if f / 10 == 9 {
//                            var f = "👏"
//                            print(f)
//                            resultTextView.text = "결과 \(f)"
//                        }
//                       
//                    }
//                    
//                }else if int369 == 3 {
//                    
//                }else if int369 == 6 {
//                    
//                }else if int369 == 9 {
//                    
//                }else {
//                    print("3,6,9 포함 노")
//                    resultTextView.text = "3,6,9 포함되지 않음"
//                    
//                }
//              
//            }
//            if list[int369 - 1] == int369 {
//                for j in 1...int369 {
//                    print(j)
//                    if list {
//                        
//                    }
//                }
//            }

            
            
            
            
            
            
//            resultTextView.text = String(int369)//마지막에
            
            
        } else {
            print("다시 입력하세요")
        }
    }
    

        
    
    
    
}

//
