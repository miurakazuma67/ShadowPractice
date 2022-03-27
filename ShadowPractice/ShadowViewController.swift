//
//  ViewController.swift
//  ShadowPractice
//
//  Created by 三浦　一真 on 2022/03/27.
//

import UIKit

final class ShadowViewController: UIViewController {
    
    //影の幅を保持するための変数
    private var shadowNum: Int = 10
    
    @IBOutlet private weak var shadowView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Viewから影までの距離を設定する
        //        widthに値を入れるとその分右に、
        //        heightに値を入れるとその分下に影がずれる
        shadowView.layer.shadowOffset = CGSize(width: 10.0, height: 10.0)
        //影の色設定
        shadowView.layer.shadowColor = UIColor.black.cgColor
        //影の不透明度を設定(最大1.0, 設定しないと影が見えない)
        shadowView.layer.shadowOpacity = 0.3
        // 影の幅、数値が大きいほどぼかしが効く
        shadowView.layer.shadowRadius = CGFloat(shadowNum)
    }
    
    
    @IBAction func buttonTapped(_ sender: Any) {
        shadowNum -= 1
        setShadowRadius(shadowRadius: shadowNum)
        
        if shadowNum == 0 {
            self.shadowNum = 10
        }
        
        //確認用
        print(shadowNum)
    }
    
    
    //ボタンを押すたびに設定し直す
    private func setShadowRadius(shadowRadius: Int) {
        shadowView.layer.shadowRadius = CGFloat(shadowRadius)
    }
    
    
}

