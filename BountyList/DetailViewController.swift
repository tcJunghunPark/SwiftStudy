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
    
   let viewModel = DetailViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        updateUI()
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
