//
//  ViewController.swift
//  GCD
//
//  Created by anhxa100 on 9/18/18.
//  Copyright © 2018 anhxa100. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        grandCentralDispatch()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    func grandCentralDispatch() {
        var count = 0
        let dispatchWorkItem = DispatchWorkItem {
            count += 1
        }
        for i in 0...50000 {
            print(i)
            if i >= 49990 {
                dispatchWorkItem.cancel()
                print("Dispatch work Item Cancel")
            } else {
                dispatchWorkItem.perform()
            }
        }
        print(count)
    }
}

