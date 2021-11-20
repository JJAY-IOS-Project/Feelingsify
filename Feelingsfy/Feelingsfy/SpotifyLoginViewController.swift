//
//  SpotifyLoginViewController.swift
//  Feelingsfy
//
//  Created by SangWon Park on 11/16/21.
//

import UIKit
import WebKit
import SpotifyLogin

class SpotifyLoginViewController: UIViewController {

    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        let handled = SpotifyLogin.shared.applicationOpenURL(url) { (error) in }
        return handled
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // adds login button
        let button = SpotifyLoginButton(viewController: self, scopes: [.streaming, .userLibraryRead])
        button.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(button)
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

        // Do any additional setup after loading the view.
        SpotifyLogin.shared.getAccessToken { (accessToken, error) in
            if error != nil {
                // User is not logged in, show log in flow.
                
            }
        }


    }
    
    
    
}
