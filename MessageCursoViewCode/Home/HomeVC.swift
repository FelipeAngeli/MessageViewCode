//
//  HomeVC.swift
//  MessageCursoViewCode
//
//  Created by Felipe Angeli on 12/01/24.
//

import UIKit
import Firebase

class HomeVC: UIViewController {
    
    var auth:Auth?
    var db:Firestore?
    var idUsuarioLagodo:String?
    var screenContact:Bool?
    var emialusuarioLogado:String?
    var alert:Alert?
    
    var screen:HomeScreen?
    
    override func loadView() {
        self.screen = HomeScreen()
        self.view = self.screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true //navegacao
        self.view.backgroundColor = CustomColor.appLight
        self.configHomeView()
        self.configCollectionView()
        self.configAlert()

    }
    
    private func configHomeView() {
        self.screen?.navView.delegate(delegate: self)
    }

    private func configCollectionView() {
        self.screen?.delegateCollectionView(delegate: self, dataSource: self)
    }
    
    private func configAlert(){
        self.alert = Alert(controller: self)
    }


}

extension HomeVC:UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 100)
    }

}


extension HomeVC:NavViewProtocol{
    func typeScreenMessage(type: TypeConversationOrConstant) {
        
        switch type {
        case .contact:
            self.screenContact = true
        case .conversation:
            self.screenContact = false
        }
    }
    
    
}
