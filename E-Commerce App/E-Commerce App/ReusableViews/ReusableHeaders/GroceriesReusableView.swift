//
//  GroceriesReusableView.swift
//  E-Commerce App
//
//  Created by Decagon on 20/07/2022.
//

import UIKit

class GroceriesReusableView: UICollectionReusableView {
    
    static let identifier = "GroceriesReusableView"
    
    lazy var newProductHeader: UILabel = {
        let label = UILabel()
        label.text = ""
        label.font = customFont(size: 18, font: .MontserratBold)
        label.textColor = UIColor(named: "dark")
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var seeAllBtn: UIButton = {
        let button = UIButton()
        button.setTitle("", for: .normal)
        button.setTitleColor(UIColor(named: "white"), for: .normal)
        button.layer.cornerRadius = 13
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    public func configure() {
        addSubview(newProductHeader)
        addSubview(seeAllBtn)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        setupHeaders()
    }
    
    func setupHeaders() {
        NSLayoutConstraint.activate([
            newProductHeader.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            newProductHeader.topAnchor.constraint(equalTo: self.bottomAnchor, constant: 20),
            
            seeAllBtn.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            seeAllBtn.topAnchor.constraint(equalTo: self.bottomAnchor, constant: 20),
            seeAllBtn.heightAnchor.constraint(equalToConstant: 25),
            seeAllBtn.widthAnchor.constraint(equalToConstant: 120),
        ])
    }
        
}
