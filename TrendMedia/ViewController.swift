//
//  ViewController.swift
//  TrendMedia
//
//  Created by 방선우 on 2022/07/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    //언제 아웃렛컬렉션을 사용하는 것이 좋을까?
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var date2Label: UILabel!
    @IBOutlet var dateLabelCollection: [UILabel]!
    @IBOutlet weak var yelloewViewLeadingConstant: NSLayoutConstraint!
    let format = DateFormatter() // 요롷게 밖에서 사용하기
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        format.dateFormat = "yyyy/MM/dd"
        
        //init이 생략돼있는거임
//        UIAlertController.init(title: <#T##String?#>, message: <#T##String?#>, preferredStyle: <#T##UIAlertController.Style#>)
        
        //초기화구문은 생략가능하게 만들어준거
        // 아래 두 코드는 같은 말
        DateFormatter()
        DateFormatter.init()
        
        // 키보드 혹은 뷰를 왔다갔다할 때 Constraint에 직접 아웃렛을 연결할 수 있음
        yelloewViewLeadingConstant.constant = 120
        
        
    }

    func configureLabelDesign() {
        //1. 아웃렛 컬렉션
        for i in dateLabelCollection {
            i.font = .boldSystemFont(ofSize: 20)
            i.textColor = .brown
            
            dateLabelCollection[0].text = "첫번째 텍스트"
            dateLabelCollection[1].text = "두번째 텍스트"
            
            // 2. UILabel
            let labelArray = [dateLabel, date2Label]
            for i in labelArray {
                i?.font = .boldSystemFont(ofSize: 20)
                i?.textColor = .brown
            }
            
            dateLabel.text = "첫번재"
            date2Label.text = "두번째"
        }
    }
    @IBAction func datePickerCalueChanged(_ sender: UIDatePicker) { //악 anY 로 지정했따
        let format = DateFormatter()
        // 데이트픽커를 사용할 떄마다 메모리에 올라왔따가 사라짐
        // 메모리입장에서는 귀찮음 -> 그냥 클래스에서 사용
       
        
        dateLabel.text = format.string(from: sender.date)
    }
}

