//
//  Trend_BucketlistTableViewController.swift
//  ConcentrationMode
//
//  Created by 방선우 on 2022/07/19.
//

import UIKit

class Trend_BucketlistTableViewController: UITableViewController {
    
    @IBOutlet weak var userTextField: UITextField!
    var list = ["범죄도시2" , "탑건", "토르"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 80
        
        list.append("마녀")
        list.append("D")
        
    }
    
    @IBAction func userTextFieldReturn(_ sender: UITextField) {
        
        list.append(sender.text!) // 추가한 셀ㄹ만큼 테이블뷰를 갱신해줘야함
        
        // 중요
        //전체 셀에 반영
        tableView.reloadData() //테이블 뷰를 다시 그려줘야함
        // 특정섹션만 갱신
       // tableView.reloadSections(<#T##sections: IndexSet##IndexSet#>, with: <#T##UITableView.RowAnimation#>) // 찾아보기
        // 하나의 줄만 갱신
//        tableView.reloadRows(at: [IndexPath(row: 0, section: 0)/*쉼표찍고 계속써도 됨*/], with: .fade) -> 0번섹션에 있는 0번인덱스를 의미하는 건가요? 여러개를 한번에 갱신 할 수 있어서 at에 있는 매개변수가 배열
        print(list)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Trend_BuketlistCellTableViewCell", for: indexPath) as! Trend_BuketlistCellTableViewCell // 아웃렛을 쓰기우ㅣ해서
            // 위의 for은 애플이 주는 인텍스 말고 정확하게 해달 테이블 뷰 인텍스와 연결하기 위해서
        
        cell.bucketlistLabel.text = list[indexPath.row]
        cell.bucketlistLabel.font = .boldSystemFont(ofSize: 18) //크게15 작게13
        
        return cell
    }
    
    //MARK: - 셀을 편집하고 싶어!!!
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    } // 편집기능을 넣어줄거야 이게 있어야 삭제도 편집도 가능함
    //canEditRowAt이 있어야 스와이프 삭제도 가능한 건가요? 넹
    
    //우측 스와이프 디폴트 기능
    //요즘 잘 안쓰는데 남아있음
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            // 배열 삭제 후 테이블 뷰 갱신(데이터 먼저 삭제해주는 거임)
            
            
            list.remove(at: indexPath.row)
            tableView.reloadData()
            
//            tableView.reloadSections(<#T##sections: IndexSet##IndexSet#>, with: <#T##UITableView.RowAnimation#>) // -> 테스트해보기
        }
    }
//    
//    override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
//        //즐겨찾기, 핀고정
//    }
//    
//    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
//        //삭제
//    }
}
