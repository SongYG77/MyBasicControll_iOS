//
//  SecondViewController.swift
//  02MyBasicControll
//
//  Created by 송윤근 on 2021/12/28.
//

//  뷰를 하나 생성 후에 해당 뷰 컨트롤러의 custom class를 지정해줘야 연동이 된다. 중요!

import UIKit

//딜리게이트를 통해 다른화면으로 전달
//Delegate -> 문법적으로는 프로토콜 자바의 인터페이스와 비슷.
//이벤트 전달자 혹은 이벤트 콜백함수.
// UITextFieldDelegate

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var tfData: UITextField!
    
    @IBOutlet weak var tv: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //텍스트필드의 이벤트 처리자
        //self의 경우는 자신이 처리.
        //이게 빠지면 이벤트가 오지 않는다.
        
        tfData.delegate = self
        
    }
    
    //글자가 텍스트필드에 입력될떄 마다 호출되어지는 함수.
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        //이벤트가 유효하면 return true
        //false로 하면 이벤트를 무시.
        print(textField.text!)
        tv.text = textField.text
        return true
    }
    
    //글자 입력이 완료 될 때 한번 호출 키보드 완료나 포커스가 다른데로 이동
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        
        print("end editing")
        return true
    }
    
    //키보드 완료버튼(다음등)을 눌러야 호출되는 함수.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        print("shouldreturn")
        return true
    }
    
    @IBAction func onswitch(_ sender: UISwitch) {
        
        tv.text = "스위치 " + String(sender.isOn)
        
    }
    @IBAction func onSegment(_ sender: UISegmentedControl) {
        tv.text = "세그먼트 " + String(sender.selectedSegmentIndex)
        
        switch sender.selectedSegmentIndex{
        case 0:
            print("segment 1")
        case 1:
            print("segment 2")
        case 2:
            print("segment 3")
        default :
            print("etc")
        }
    }
    
}
