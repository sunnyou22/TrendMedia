//
//  ConcentrationModeTableViewController.swift
//  ConcentrationMode
//
//  Created by 방선우 on 2022/07/18.
//

import UIKit

class ConcentrationModeTableViewController: UITableViewController {
    var allSettings = ["공지사항", "실험실" ,"버전정보"]
    var personalizationSetting = ["개인/보안", "앨범", "채팅", "멀티프로필"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - 셀 설정
    
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
}
