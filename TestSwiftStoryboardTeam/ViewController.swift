//
//  ViewController.swift
//  TestSwiftStoryboardTeam
//
//  Created by Marcela Rodriguez on 4/13/21.
//

import UIKit
import HomeTurf

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func navigateToHomeTurf(_ sender: Any) {
        let webViewVC = HomeTurfWebViewController.init()
        let auth0Service = TeamHomeTurfAuth0Service.init()
        let orientationUtility = TeamHomeTurfOrientationUtility.init()
        webViewVC.setAuth0Service(auth0Service: auth0Service)
        webViewVC.setOrientationUtility(orientationUtility: orientationUtility)
        self.navigationController?.pushViewController(webViewVC, animated: false)
    }
}

