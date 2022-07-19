//
//  ConcentrationModeTableViewController.swift
//  ConcentrationMode
//
//  Created by 방선우 on 2022/07/18.
//

import UIKit

//수업, 열거형은 관리하기위해 별도의 파일에서 작성하기도햄
// CaseIterable -> 배열처럼 열거형을 활용 가능한 프로토콜
enum SettingOption: Int, CaseIterable {
    case total, personal, others //섹션 자동으로 원시값이 012들어감
    
    var sectiontitle: String {
        switch self {
        case .total:
            return "전체설정"
        case .personal:
            return "개인설정"
        case .others:
            return "기타"
        }
    }

    var rowTitle: [String] {
        switch self {
        case .total:
            return ["공지사항", "실험실", "버전정보"]
        case .personal:
            return  ["개인/보안", "앨범", "채팅", "멀티프로필"]
        case .others:
            return ["고객센터/도움말"]
        }
    }
}



class ConcentrationModeTableViewController: UITableViewController {
    var allSettings = ["공지사항", "실험실" ,"버전정보"]
    var personalizationSetting = ["개인/보안", "앨범", "채팅", "멀티프로필"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - 셀 설정
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return SettingOption.allCases.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        //SettingOption.allCases[0] - > .total
        /*
        if section == 0 {
          return  SettingOption.allCases[0].rowTitle.count
        } else if section == 1 {
           return SettingOption.allCases[section].rowTitle.count
        } else {
            return SettingOption.allCases[section].rowTitle.count
        }
         */
        
        return SettingOption.allCases[section].rowTitle.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell")!
        
        /*
        if indexPath.section == 0 {
            
            if indexPath.row == 0 {
                cell.textLabel?.text = SettingOption.allCases[indexPath.row].rowTitle[0]
            } else if indexPath.row == 1 {
                cell.textLabel?.text = SettingOption.allCases[indexPath.row].rowTitle[1]
            } else if indexPath.row == 2 {
                cell.textLabel?.text = SettingOption.allCases[indexPath.row].rowTitle[2]
            }
        } else if indexPath.section == 1 {
            if indexPath.row == 0 {
                cell.textLabel?.text = SettingOption.allCases[indexPath.row].rowTitle[0]
            } else if indexPath.row == 1 {
                cell.textLabel?.text = SettingOption.allCases[indexPath.row].rowTitle[1]
            } else if indexPath.row == 2 {
                cell.textLabel?.text = SettingOption.allCases[indexPath.row].rowTitle[2]
            } else if indexPath.row == 3 {
                cell.textLabel?.text = SettingOption.allCases[indexPath.row].rowTitle[3]
            }
        } else if indexPath.section == 2 {
            if indexPath.row == 0 {
                cell.textLabel?.text = SettingOption.allCases[indexPath.row].rowTitle[0]
            }
         */
            
        // 그럼 반복문처럼 토달의 모든 값을 다 돌때까지 실행되는건가?
            cell.textLabel?.text = SettingOption.allCases[indexPath.row].rowTitle[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return SettingOption.allCases[section].sectiontitle
    }
  
    /*
     내코드
     override func numberOfSections(in tableView: UITableView) -> Int {
         return 3
     }
 
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return allSettings.count
        } else if section == 1 {
            return personalizationSetting.count
        } else {
            return 1
        }
    }
    
    //MARK: - 섹션 헤더 설정
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            return "전체 설정"
        } else if section == 1 {
            return "개인 설정"
        } else {
            return "기타"
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell")! // 이걸 옵셔널이나 열거형 처리?
        
        if indexPath.section == 0 {
            cell.textLabel?.text = allSettings[indexPath.row]
        } else if indexPath.section == 1 {
            cell.textLabel?.text = personalizationSetting[indexPath.row]
        } else if indexPath.section == 2 {
            cell.textLabel?.text = "고객센터/도움말"
        }
        return cell
    }
     */
}
