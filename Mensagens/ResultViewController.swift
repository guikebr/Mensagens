//
//  ResultViewController.swift
//  Mensagens
//
//  Created by Guilherme Santos on 06/05/19.
//  Copyright © 2019 Guilherme Santos. All rights reserved.
//

import UIKit

class ResultViewController: BaseViewController {

    @IBOutlet weak var viBorder: UIView!
    var useWhiteBorder: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: true)
        lbMessage.text = message.text
        lbMessage.textColor = message.textColor
        lbMessage.backgroundColor = message.backgroundColor
        view.backgroundColor = message.screenColor
        viBorder.backgroundColor = useWhiteBorder ? .white : .clear
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        navigationController?.popViewController(animated: true)
    }
}
