//
//  NewViewController.swift
//  TabBar
//
//  Created by anny on 2020/9/24.
//  Copyright © 2020 anny. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {

    var messageFromViewOne = ""
    
    @IBOutlet weak var textInput: UITextField!
    
    @IBAction func ok(_ sender: UIButton) {
        if let intputText = textInput.text{
            print(intputText)
            textInput.text = ""
            textInput.resignFirstResponder()
            
            if let first = self.tabBarController?.viewControllers?[0] as? ViewController{
                // 這樣就可以拿到 畫面一 也就是 ViewController 中的 myLable
                first.myLable.text = intputText
                
                // 這樣就可以跳轉回畫面一
                self.tabBarController?.selectedIndex = 0
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textInput.text = messageFromViewOne
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        textInput.becomeFirstResponder()
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
