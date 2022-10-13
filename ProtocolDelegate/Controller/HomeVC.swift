//
//  HomeVC.swift
//  ProtocolDelegate
//
//  Created by Azimjon on 13/10/22.
//

import UIKit



class HomeVC: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var cardView: UIView!
    var lightOn = false
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .darkGray
        self.cardView.backgroundColor = .darkGray
    }

    @IBAction func lightBtnPressed(_ sender: UIButton) {
        let lightCVC = LightControlVC(nibName: "LightControlVC", bundle: nil)
        lightCVC.delegate = self
        lightCVC.view.backgroundColor = UIColor.white.withAlphaComponent(0.100)
        lightCVC.lightTogle.isOn = lightOn
        self.present(lightCVC, animated: true)
    }

}

// MARK: - BulbDelegate
extension HomeVC: BulbDelegate {
    func taggleBulb(_ state: Bool) {
        lightOn = state
        if lightOn {
            self.imageView.image = #imageLiteral(resourceName: "lightOn")
            self.view.backgroundColor = .orange
            self.cardView.backgroundColor = .orange
        } else {
            self.imageView.image = #imageLiteral(resourceName: "lightOf")
            self.view.backgroundColor = .darkGray
            self.cardView.backgroundColor = .darkGray
        }
    }
}
