//
//  ColorPikerViewController.swift
//  Mensagens
//
//  Created by Guilherme Santos on 06/05/19.
//  Copyright © 2019 Guilherme Santos. All rights reserved.
//

import UIKit

protocol ColorPikerProtocol: class {
    func applyColor(color: UIColor)
}

class ColorPikerViewController: UIViewController {

    @IBOutlet weak var viColor: UIView!
    @IBOutlet weak var slRed: UISlider!
    @IBOutlet weak var slGreen: UISlider!
    @IBOutlet weak var slBlue: UISlider!
    
    weak var reference: ColorPikerProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func choosecoLOR(_ sender: UIButton) {
        reference?.applyColor(color: viColor.backgroundColor!)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func changeColor(_ sender: UISlider) {
        
        viColor.backgroundColor = UIColor(red: CGFloat(slRed.value), green: CGFloat(slGreen.value), blue: CGFloat(slBlue.value), alpha: 1.0)
    }
}
