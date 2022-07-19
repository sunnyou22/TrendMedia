//
//  TrendViewController.swift
//  ConcentrationMode
//
//  Created by 방선우 on 2022/07/19.
//

import UIKit

class TrendViewController: UIViewController {

    @IBOutlet weak var searchTextField: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        setBackgroundColor()
        searchTextField.borderColor() // 확장한 타입(UITextField)의 메서드 가져옴
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
