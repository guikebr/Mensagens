//
//  BaseViewController.swift
//  Mensagens
//
//  Created by Guilherme Santos on 06/05/19.
//  Copyright © 2019 Guilherme Santos. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    @IBOutlet weak var lbMessage: UILabel!
    var message: Message!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeColor(_ sender: UIButton){
        if let reference = self as? ColorPikerProtocol {
            let colorPiker = storyboard?.instantiateViewController(withIdentifier: "ColorPikerViewController") as! ColorPikerViewController
            colorPiker.modalPresentationStyle = .overCurrentContext
            colorPiker.reference = reference
            present(colorPiker, animated: true, completion: nil)
        }
    }
}
