//
//  ViewController.swift
//  TestApp
//
//  Created by 김동현 on 2021/08/07.
//

import UIKit
import DDongKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(Validator.shared.validEmail("dsf@sdfa.com"))
        print(Validator.shared.validPwd("ASDFASDF"))
    }


}

