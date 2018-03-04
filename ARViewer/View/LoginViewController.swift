//
//  LoginViewController.swift
//  ARViewer
//
//  Created by Yuqing Huang  on 05/03/2018.
//  Copyright © 2018 Faris Sbahi. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameField.text = UserDefaults.standard.value(forKey: "username") as? String

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveName(_ sender: UIButton) {
        print("save name")
        
        UserDefaults.standard.set(nameField.text, forKey: "username")
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
