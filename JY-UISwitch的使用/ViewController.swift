//
//  ViewController.swift
//  JY-UISwitch的使用
//
//  Created by atom on 2017/4/8.
//  Copyright © 2017年 atom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let fullScreenSize = UIScreen.main.bounds.size
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addSubview(mySwitch)
    }
    
    private lazy var mySwitch: UISwitch = {
        let mySwitch = UISwitch()
        //mySwitch.center = CGPoint(x: self.fullScreenSize.width * 0.5, y: self.fullScreenSize.height * 0.3)
        mySwitch.thumbTintColor = UIColor.orange
        mySwitch.tintColor = UIColor.brown
        mySwitch.addTarget(self, action: #selector(onChange(sender:)), for: .valueChanged)
        return mySwitch
    }()
    
    @objc private func onChange(sender: Any) {
        let tempSwitch = sender as! UISwitch
        if tempSwitch.isOn {
            self.view.backgroundColor = UIColor.black
        } else {
            self.view.backgroundColor = UIColor.white
        }
    }
    
    override func viewDidLayoutSubviews() {
        mySwitch.center = CGPoint(x: self.fullScreenSize.width * 0.5, y: self.fullScreenSize.height * 0.3)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

