//
//  SymbolRollerViewController.swift
//  SymbolRoller
//
//  Created by Junghun Park on 2022/08/29.
//

import UIKit

class SymbolRollerViewController: UIViewController {
    
    let symbols: [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var label: UILabel!
    
    @IBOutlet var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.tintColor = UIColor.systemPink
        reload()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    func reload(){
        let symbol = symbols.randomElement()!
        
        imageView.image = UIImage(systemName: symbol)
        label.text = symbol
    }
    

    @IBAction func buttonTapped(_ sender: Any) {
        reload()
    }
    

}
