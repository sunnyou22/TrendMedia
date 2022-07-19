//
//  UIViewController+Extension.swift
//  ConcentrationMode
//
//  Created by 방선우 on 2022/07/19.
//

import UIKit

extension UIViewController { // 테이블뷰컨은 확장을 안해서 내 과제의 뷰컨은 동작안함 -> 그래서 항상 뷰컨을 밑바탕에 두고 작업하는 편임

func setBackgroundColor() {
    
    view.backgroundColor = .orange // 이미 내부적으로 아웃렛이 있으니까 이렇게 접근
    
}

func showAlert() {
    
    let alert = UIAlertController(title: "a", message: "b", preferredStyle: .alert)
    let ok = UIAlertAction(title: "ok", style: .default)
    alert.addAction(ok)
    
    present(alert, animated: true)
}
}
