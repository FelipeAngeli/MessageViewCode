//
//  HomeVC.swift
//  MessageCursoViewCode
//
//  Created by Felipe Angeli on 12/01/24.
//

import UIKit

class HomeVC: UIViewController {
    
    var screen:HomeScreen?

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    override func loadView() {
        self.screen = HomeScreen()
        self.view = self.screen
    }


}
