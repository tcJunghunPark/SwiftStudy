//
//  DetailViewController.swift
//  BountyList
//
//  Created by Junghun Park on 2022/02/16.
//

import UIKit

class DetailViewController: UIViewController {
    
    //MVVM 찾기
    
    //Model
    //- BountyInfo
    
    //View
    //- imgView, nameLabel, bountyLabel
    // view 들은 viewmodel을 통해서 구성
    
    //ViewModel
    // - detailviewmodel 뷰 레이어에서 필요한 메소드 만들기
    // 모델 가지고 있기 ,, BountyInfo 들
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountLabel: UILabel!
    
    @IBOutlet weak var nameLabelCenterX: NSLayoutConstraint!
    
    @IBOutlet weak var bountyLabelCenterX: NSLayoutConstraint!
    
    
    let viewModel = DetailViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        updateUI()
        perpareAnimation()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        showAnimation()
    }
    
    private func perpareAnimation(){
//        nameLabelCenterX.constant = view.bounds.width
//        bountyLabelCenterX.constant = view.bounds.width
        nameLabel.transform = CGAffineTransform(translationX: view.bounds.width, y: 0).scaledBy(x: 3, y: 3).rotated(by: 180)
        bountLabel.transform = CGAffineTransform(translationX: view.bounds.width, y: 0).scaledBy(x: 3, y: 3).rotated(by: 180)
        
        nameLabel.alpha = 0
        bountLabel.alpha = 0

    }
    private func showAnimation(){
//        nameLabelCenterX.constant = 0
//        bountyLabelCenterX.constant = 0
//
//        UIView.animate(withDuration: 0.5,
//                       delay: 0.2,
//                       usingSpringWithDamping: 0.6,
//                       initialSpringVelocity: 2,
//                       options: .allowUserInteraction,
//                       animations: {self.view.layoutIfNeeded()},
//                       completion: nil)
//
//        UIView.transition(with: imgView,
//                          duration: 0.3,
//                          options: .transitionFlipFromLeft,
//                          animations: nil,
//                          completion: nil)
        
        UIView.animate(withDuration: 1,
                   delay: 0,
                   usingSpringWithDamping: 0.6,
                   initialSpringVelocity: 2,
                   options: .allowUserInteraction,
                   animations: {
            self.nameLabel.transform = CGAffineTransform.identity
            self.nameLabel.alpha = 1
        },completion: nil)
        
        UIView.animate(withDuration: 1,
                       delay: 0.2,
                   usingSpringWithDamping: 0.6,
                   initialSpringVelocity: 2,
                   options: .allowUserInteraction,
                   animations: {
            self.bountLabel.transform = CGAffineTransform.identity
            self.bountLabel.alpha = 1
        },completion: nil)
        
        
        UIView.transition(with: imgView,
                          duration: 0.3,
                          options: .transitionFlipFromLeft,
                          animations: nil,
                          completion: nil)
        
        nameLabel.transform = CGAffineTransform.identity
        bountLabel.transform = CGAffineTransform.identity
        
         
    }
    
    
    func updateUI(){
        if let bountyInfo = viewModel.bountyInfo {
            imgView.image = bountyInfo.image
            nameLabel.text = bountyInfo.name
            bountLabel.text = "$ \(bountyInfo.bounty)"
        }
       
        
    }
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
    }
    
   

}

class DetailViewModel {
    var bountyInfo: BountyInfo?
    
    func update(model: BountyInfo?){
        bountyInfo = model
    }
}
