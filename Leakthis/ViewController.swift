//
//  ViewController.swift
//  Leakthis
//
//  Created by Charlton Smith on 10/22/20.
//  Copyright © 2020 Charlton Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var iEmailField: UITextFieldPadding!
    @IBOutlet weak var iPasswordField: UITextFieldPadding!
    @IBOutlet weak var iLoginBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.viewControllers.remove(at: 0)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }

}
