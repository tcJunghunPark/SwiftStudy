//
//  ChatListViewController.swift
//  ChatList
//
//  Created by Junghun Park on 2022/08/31.
//

import UIKit

class ChatListViewController: UIViewController {
    @IBOutlet var collectionView: UICollectionView!
    var chatList : [Chat] = Chat.list
    override func viewDidLoad() {
        super.viewDidLoad()
        //Data, Presentation, Layout
        collectionView.dataSource = self
        collectionView.delegate = self
        chatList.sort {
                return $0.date > $1.date
            }
        
    }
}

extension ChatListViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return chatList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ChatListCollectionViewCell", for: indexPath) as? ChatListCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.configure(chatList[indexPath.item])
        return cell
    }
    
    
}
extension ChatListViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width, height: 100)
    }
}

