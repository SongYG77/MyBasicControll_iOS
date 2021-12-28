//
//  ViewController.swift
//  02MyBasicControll
//
//  Created by 송윤근 on 2021/12/27.
//

import UIKit

class ViewController: UIViewController {

    //아웃렛 변수가 들어가는 부분
    
    @IBOutlet weak var label_title: UILabel!
    //  IB는 인터페이스 빌더 outlet(밖으로 뺀다)
    //  weak 약한 변수 var 이름
    //  UIlabel 타입
    //  !는 옵셔널 변수의 강제 언레핑.
    @IBOutlet weak var bt1: UIButton!
    @IBOutlet weak var bt2: UIButton!
    @IBOutlet weak var bt3: UIButton!
    @IBOutlet var bts: [UIButton]!
    @IBOutlet weak var tf_input: UITextField!
    @IBOutlet weak var bt_input: UIButton!
    @IBOutlet weak var imageview: UIImageView!
    
    //화면이 적재되었을때 즉 로딩 완료시 자동호출되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label_title.backgroundColor = UIColor.cyan
        
        label_title.text = "타이틀입니다."
        label_title.textColor = UIColor.orange
        
        bt1.backgroundColor = UIColor.red
        
        for btn in bts{
            btn.backgroundColor = UIColor(red: 1.0, green: 0, blue: 0, alpha: 1)
            //alpha = 0.0 ~ 1.0
            //rgb = 0.0 ~ 1.0
        }
        
        bts[0].backgroundColor = UIColor(red: 0.0, green: 1.0, blue: 0.5, alpha: 1)
        
    }
    
    //액션 함수가 들어가는 부분.
    
    @IBAction func onbt1Click(_ sender: UIButton) {
        
        //함수 호출이 되었을때.
        print("bt1 click")
        label_title.text = "bt1 클릭됨"
    }
    
    @IBAction func onbt_inputClick(_ sender: Any) {
        let titletext = tf_input.text
        label_title.text = titletext
    }
    
    @IBAction func onbt2Click(_ sender: Any) {
        imageview.image = UIImage(named: "image2.png")
    }
    
}

