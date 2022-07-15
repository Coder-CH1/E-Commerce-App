//
//  Extension+Constraints.swift
//  E-Commerce App
//
//  Created by Decagon on 13/07/2022.
//

import UIKit

extension HomeViewController {
    //MARK: - Constraints of the Homeviewcontroller properties
    func setupConstraint() {
        let subviews = [searchView, titleLabel, heartIcon, cartIcon, searchTextField, searchIcon, scrollView, collectionView]
        for subview in subviews {
            view.addSubview(subview)
        }
        NSLayoutConstraint.activate([
            searchView.topAnchor.constraint(equalTo: view.topAnchor),
            searchView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            searchView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            searchView.heightAnchor.constraint(equalToConstant: 170),
            
            titleLabel.topAnchor.constraint(equalTo: searchView.topAnchor, constant: 56),
            titleLabel.leadingAnchor.constraint(equalTo: searchView.leadingAnchor, constant: 16),
            
            heartIcon.topAnchor.constraint(equalTo: searchView.topAnchor, constant: 60),
            heartIcon.trailingAnchor.constraint(equalTo: searchView.trailingAnchor, constant: -68),
            
            cartIcon.topAnchor.constraint(equalTo: searchView.topAnchor, constant: 60),
            cartIcon.leadingAnchor.constraint(equalTo: heartIcon.trailingAnchor, constant: 22),
            
            searchTextField.topAnchor.constraint(equalTo: searchView.topAnchor, constant: 108),
            searchTextField.leadingAnchor.constraint(equalTo: searchView.leadingAnchor, constant: 20),
            searchTextField.trailingAnchor.constraint(equalTo: searchView.trailingAnchor, constant: -20),
            searchTextField.heightAnchor.constraint(equalToConstant: 46),
            searchTextField.widthAnchor.constraint(equalToConstant: 355),
            
            searchIcon.topAnchor.constraint(equalTo: searchTextField.topAnchor, constant: 14),
            searchIcon.leadingAnchor.constraint(equalTo: searchTextField.leadingAnchor, constant: 18),
            
            scrollView.topAnchor.constraint(equalTo: searchView.bottomAnchor, constant: 10),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.heightAnchor.constraint(equalToConstant: 170),
            
            // 4.
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            stackView.heightAnchor.constraint(equalTo: scrollView.heightAnchor),
            
            collectionView.topAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 10),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
        ])
    }
    
    
}