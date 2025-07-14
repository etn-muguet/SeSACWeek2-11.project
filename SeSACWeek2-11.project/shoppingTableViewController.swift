//
//  shoppingTableViewController.swift
//  SeSACWeek2-11.project
//
//  Created by 김현지 on 7/11/25.
//

import UIKit

struct shopping {
    let shopList:String
    let favorite:Bool
    let bought:Bool
}

class shoppingTableViewController: UITableViewController {
    
    @IBOutlet var headerView: UIView!
    @IBOutlet var shopTextField: UITextField!
    @IBOutlet var topButton: UIButton!
    
    var shoppingList: [shopping] = [shopping(shopList: "아이폰", favorite: true, bought: true),shopping(shopList: "맥북", favorite: true, bought: true),shopping(shopList: "에어팟", favorite: true , bought: false),shopping(shopList: "에어팟 맥스", favorite: false, bought: false)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headerView.backgroundColor = .lightGray
        headerView.layer.cornerRadius = 10
        shopTextField.placeholder = "무엇을 구매하실건가요?"
        shopTextField.backgroundColor = .lightGray
        topButton.setTitle("추가", for: .normal)
        topButton.backgroundColor = .gray
        topButton.layer.cornerRadius = 10
        topButton.setTitle("저장", for: .normal)
        topButton.setTitleColor(UIColor.white, for: .normal)
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(#function)
        
        return shoppingList.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(#function, indexPath)

        let cell = tableView.dequeueReusableCell(withIdentifier: "shopCell", for: indexPath) as! shoppingTableViewCell
        
        cell.cellView.backgroundColor = .gray
        
        cell.shopLabel?.text = shoppingList[indexPath.row].shopList
        
        if shoppingList[indexPath.row].favorite == true {
            cell.rightStarButton.setImage(UIImage(systemName: "star.fill"), for: .normal)
        }else {
            cell.rightStarButton.setImage(UIImage(systemName: "star"), for: .normal)
        }
        if shoppingList[indexPath.row].bought == true {
            cell.leftCheckButton.setImage(UIImage(systemName: "checkmark.circle.fill"), for: .normal)
        }else {
            cell.leftCheckButton.setImage(UIImage(systemName: "checkmark.circle"), for: .normal)
        }
        
        cell.shopLabel.textColor = .black
        cell.backgroundColor = .white
        cell.cellView.backgroundColor = .lightGray
        cell.cellView.layer.cornerRadius = 10
        cell.leftCheckButton.setTitle("", for: .normal)
        cell.rightStarButton.setTitle("", for: .normal)
        cell.shopLabel.font = .systemFont(ofSize: 15)
        cell.leftCheckButton.tintColor = .red
        cell.rightStarButton.tintColor = .yellow

        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        print(#function)

        return 60
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(#function)

        shoppingList.remove(at: indexPath.row)
        tableView.reloadData()

    }
    
    @IBAction func checkButtonClicked(_ sender: UIButton) {
        print(#function)
        
        var randomBool = Bool.random()
        var randomBool2 = Bool.random()
        
        if let addShoppingList = shopTextField.text {
            if shopTextField.text!.isEmpty == false {
                print("addShoppingList 출력")
                shoppingList.append(shopping(shopList: addShoppingList , favorite:randomBool, bought: randomBool2))
                tableView.reloadData()
            }
        } else {
            print("출력 불가")
        }
    }
}
