//
//  BountyViewController.swift
//  BountyList
//
//  Created by Junghun Park on 2022/02/16.
//

import UIKit

class BountyViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //MVVM 찾기
    
    //Model
    //- BountyInfo
    
    //View
    //-ListCell 정보 viewmodel에게 받기
    //ListCell은 viewmodel로부터 받은 정보로 뷰 업데이트
    
    //ViewModel
    // - bountyViewModel 만들기, 뷰 레이어에서 필요한 메소드 만들기
    // 모델 가지고 있기 ,, BountyInfo 들
    
    let viewModel = BountyViewModel()
   
    //tableView 에서 세그웨이가 실행되기 전에 실행되는 메소드
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //detailViewController에게 데이터 넘겨줌
        if segue.identifier == "showDetail" {
            let vc = segue.destination as? DetailViewController
            
            if let index = sender as? Int{
                
                let bountyInfo = viewModel.bountyInfo(at: index)
                vc?.viewModel.update(model: bountyInfo)
                
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfBountyInfoList //셀 몇개?
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //cell의 기본 타입은 UITableView인데 상속한 ListCell로 커스텀 하기 위해서 upper casting 필요, 캐스팅 할 때 옵셔널 이기 때문에 guard나 if 필요
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell else {
            return UITableViewCell()
        }
        
        let bountyInfo = viewModel.bountyInfo(at: indexPath.row)
        cell.update(info: bountyInfo)
        
        return cell
        
//        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell {
//            return cell
//        }else {
//            return UITableViewCell()
//        } ---? guard 랑 같은 의미
    }
    //UITableViewDelegate 상호작용
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("---> \(indexPath.row)")
        performSegue(withIdentifier: "showDetail", sender: indexPath.row)
    }

   

}

class ListCell: UITableViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountLabel: UILabel!
    
    func update(info: BountyInfo) {
        imgView.image = info.image
        nameLabel.text = info.name
        bountLabel.text = "$ \(info.bounty)"
        
    }
}


class BountyViewModel {
    let bountyInfoList: [BountyInfo] = [
        BountyInfo(name: "brook", bounty: 33000000),
        BountyInfo(name: "chopper", bounty: 50),
        BountyInfo(name: "franky", bounty: 44000000),
        BountyInfo(name: "luffy", bounty: 300000000),
        BountyInfo(name: "nami", bounty: 1600000),
        BountyInfo(name: "robin", bounty: 80000000),
        BountyInfo(name: "sanji", bounty: 77000000),
        BountyInfo(name: "zoro", bounty: 120000000)
    ]
    
    var sortedList: [BountyInfo] {
        let sortedList = bountyInfoList.sorted { prev, next in
            return prev.bounty > next.bounty
        }
        return sortedList
    }
    
    var numberOfBountyInfoList: Int {
        return bountyInfoList.count
    }
    
    func bountyInfo(at index: Int) -> BountyInfo{
        return sortedList[index]
    }
}
