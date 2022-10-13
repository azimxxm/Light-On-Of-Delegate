//
//  LightControlVC.swift
//  ProtocolDelegate
//
//  Created by Azimjon on 13/10/22.
//

import UIKit


protocol BulbDelegate {
    func taggleBulb(_ state:Bool)
}


class LightControlVC: UIViewController {


    @IBOutlet weak var lightTogle: UISwitch!
    var delegate:BulbDelegate!
    override func viewDidLoad() {
        super.viewDidLoad()
        lightTogle.isOn = false
    }

    @IBAction func goToSwitchTogle(_ sender: UISwitch) {
        delegate.taggleBulb(sender.isOn)
        self.dismiss(animated: true)
    }
    
}
