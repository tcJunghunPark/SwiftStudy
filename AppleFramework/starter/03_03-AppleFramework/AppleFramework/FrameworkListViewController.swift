//
//  FrameworkListViewController.swift
//  AppleFramework
//
//  Created by Junghun Park on 2022/08/31.
//

import UIKit

class FrameworkListViewController: UIViewController {

    @IBOutlet var collectionView: UICollectionView!
    let frameworkList : [AppleFramework] = AppleFramework.list
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.dataSource = self
        collectionView.delegate = self
        
        navigationController?.navigationBar.topItem?.title = "☀️ Apple Frameworks"
        
        if let flowlayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowlayout.estimatedItemSize = .zero
        }
        
        collectionView.contentInset = UIEdgeInsets(top: 20, left: 16, bottom: 0, right: 16)
    }
}

extension FrameworkListViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return frameworkList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FrameworkCell", for: indexPath) as? FrameworkCell else {
            return UICollectionViewCell()
        }
        cell.configure(frameworkList[indexPath.item])
        return cell
    }
    
    
}
extension FrameworkListViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let interItemSpacing: CGFloat = 10
        let padding: CGFloat = 16
        
        let width = (collectionView.bounds.width - interItemSpacing * 2 - padding * 2) / 3
        let height = width * 1.5
        
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
}
extension FrameworkListViewController : UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let framework = frameworkList[indexPath.item]
        print(">>> selected: \(framework.name)")
    }
}
