//
//  UITextField+Extension.swift
//  ConcentrationMode
//
//  Created by 방선우 on 2022/07/19.
//

import UIKit // UIKit을 상속받으니까

extension UITextField {
    
//    let placeholer = "이메일을 이용해주세요" // 넵-> 요거는 확장하기 어려움
 
    func borderColor() {
        self.layer.borderColor = UIColor.black.cgColor // 내부적으로 텍스트 필드는 아웃렛이 없으니까 self로 지정
        self.layer.borderWidth = 1.0
        self.borderStyle = .none
    }
}
