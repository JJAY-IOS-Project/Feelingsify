//
//  SpotifyLoginViewController.swift
//  Feelingsfy
//
//  Created by SangWon Park on 11/16/21.
//

import UIKit
import Parse
import SpotifyLogin

class SpotifyLoginViewController: UIViewController {
    var loginButton: UIButton?

        override func viewDidLoad() {
            super.viewDidLoad()
            let button = SpotifyLoginButton(viewController: self,
                                            scopes: [.streaming,
                                                     .userReadTop,
                                                     .playlistReadPrivate,
                                                     .userLibraryRead])
            self.view.addSubview(button)
            self.loginButton = button
            NotificationCenter.default.addObserver(self,
                                                   selector: #selector(loginSuccessful),
                                                   name: .SpotifyLoginSuccessful,
                                                   object: nil)
        }

        override func viewWillLayoutSubviews() {
            super.viewWillLayoutSubviews()
            loginButton?.center = self.view.center
        }

        deinit {
            NotificationCenter.default.removeObserver(self)
        }

        @objc func loginSuccessful() {
            self.navigationController?.popViewController(animated: true)
        }
 
}
