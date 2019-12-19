//
//  ViewController.swift
//  TabBarExample
//
//  Created by Syyclops Admin on 12/19/19.
//  Copyright © 2019 Sayooj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnSwipe = true
//        setNeedsStatusBarAppearanceUpdate()
    }
    
    override var prefersStatusBarHidden : Bool {
        if self.navigationController?.isNavigationBarHidden == true {
            return true
        } else {
            return false
        }
    }
    
    @IBAction func gotoNextPage(_ sender: UIButton) {
        
        navigationController?.pushViewController(SecondViewController(), animated: true)
    }
    
}


class SecondViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    
    }
    
}





//
//extension UINavigationController {
//    open override var childForStatusBarHidden: UIViewController? {
//        return self.topViewController
//    }
//}
