//
//  ResultViewController.swift
//  RandomLottery
//
//  Created by 南　京兵 on 2016/12/27.
//  Copyright © 2016年 南　京兵. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    static let singleton = ResultViewController()
    
    var array: Array = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R"]
    var name: String? = ""
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 配列の要素があったら配列の要素からランダムに表示し、表示した後削除
        if  ResultViewController.singleton.array.count > 0 {
            let index = Int(arc4random()) %  ResultViewController.singleton.array.count;
            label.text = ResultViewController.singleton.array[index]
            print("\(name!) : \(ResultViewController.singleton.array[index])")
            ResultViewController.singleton.array.remove(at: index)
        } else {
            label.text = "終了しました"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
