//
//  ViewController.swift
//  RandomLottery
//
//  Created by 南　京兵 on 2016/12/27.
//  Copyright © 2016年 南　京兵. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ResultViewController.singleton.array = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var textField: UITextField?
    
    // このメソッドで渡す
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "resultViewController" {
            
            let resultViewController:ResultViewController = segue.destination as! ResultViewController
            
            // 変数:遷移先ViewController型 = segue.destinationViewController as 遷移先ViewController型
            // segue.destinationViewController は遷移先のViewController
            
            guard self.textField?.text != nil else {
                return
            }
            
            resultViewController.name = self.textField?.text
        }
    }


}

