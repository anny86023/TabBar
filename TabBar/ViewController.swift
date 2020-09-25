//
//  ViewController.swift
//  TabBar
//
//  Created by anny on 2020/9/24.
//  Copyright © 2020 anny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myLable.text = "First View"
        
        if let second = self.tabBarController?.viewControllers?[1] as? NewViewController{
            // 這樣就可以將 設定值傳道 畫面二
            second.messageFromViewOne = "Hi"
        }

    }


}

