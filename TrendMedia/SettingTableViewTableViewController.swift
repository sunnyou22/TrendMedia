//
//  SettingTableViewTableViewController.swift
//  TrendMedia
//
//  Created by 방선우 on 2022/07/18.
//

import UIKit

class SettingTableViewTableViewController: UITableViewController {
    var birthDayFriend = ["뽀로러", "신데렐라", "울라프", "스노기". "모귈", "고래밥"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
    }
    
    // 셀의 갯수 (옵션)
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    //애플이 주는 섹션 -> 반환값이 스트링이라 편하게 구현가능
    // 헤더가 없어도 되고 섹션만 구별해도 돼~
    // section매배변가 왜 있지? 어떤 섹션인지는 0번부터 시작하는 인덱스로 순서가 이루어짐
    //섹션이 0번이면 생일인친구 1번이면 친구 이롷게 -> 이때 매개변수활용
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            return "생일인 친구"
        } else if section == 1  {
            return "즐겨찾기"
        } else {
            return "섹션"
        }
     //섹션의 갯수를 지정해줘도 else처리를 해줘야함
    }
    
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "푸터"
    }
    
    // 꾸미기 좋음
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        <#code#>
    }
    
    // 높이로 구분학  쉽게
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        <#code#>
    }
    
    //1. 셀의 갯수(필수): 섹션마다 셀의 수
    // ex)카톡 100명 > 셀 100개
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return birthDayFriend.count
        } else if section == 1 {
            return 2
        } else if section == 2 {
            return 10
        } else {
            return 0
        }
        
        return 3
    }
  
    //2. 셀의 디자인과 데이터 필수
    //ex) 키톡 이저말, 프로필 사진, 상태메세지
    // 셀 갯수만틈 실행이 됨 -> 반복문을 사용할 필요가 없음
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //*100
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell")
//
//        cell?.textLabel?.text = [birthDayFriend[indexPath.row]]
//        if indexPath.section == 0 {
//
//            if indexPath.row == 0 {
//                cell?.textLabel?.text = birthDayFriend[indexPath.row]
//            } else if indexPath.row == 1 {
//                cell?.textLabel?.text = birthDayFriend[indexPath.row]
//            } else if indexPath.row == 2 {
//                cell?.textLabel?.text == birthDayFriend[2]
//            }
//
//            cell?.textLabel?.text = "셀 텍스트"
//            cell?.textLabel?.textColor = .systemMint
//
//
//        }
        override func tableView(_ tableView: UITableView, heightForRowAt indexPath)
    }
}
