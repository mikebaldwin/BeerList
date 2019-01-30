//
//  BeerDetailViewController.swift
//  BeerList
//
//  Created by Michael Baldwin on 1/28/19.
//  Copyright © 2019 mikebaldwin.co. All rights reserved.
//

import UIKit

class BeerDetailViewController: UIViewController {

    // Data
    let beer: Beer
    
    // Subviews
    var scrollView = UIScrollView()
    var headerView = UIView()
    var taglineView = UIView()
    var descriptionView = UIView()
    
    var nameLabel = UILabel()
    var taglineLabel = UILabel()
    var descriptionLabel = UILabel()
    
    // Setup
    init(with beer: Beer) {
        self.beer = beer
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) not implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = beer.name
        layoutAndConstrainSubviews()
    }
    
    func layoutAndConstrainSubviews() {

        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.textColor = .white
        nameLabel.backgroundColor = .red
        nameLabel.font = UIFont.boldSystemFont(ofSize: 48.0)
        nameLabel.numberOfLines = 0
        nameLabel.lineBreakMode = .byWordWrapping
        nameLabel.textAlignment = .center
        nameLabel.text = beer.name
        nameLabel.sizeToFit()
        view.addSubview(nameLabel)
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            nameLabel.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            nameLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            nameLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/3),
        ])
        
        // Add tagline view
        taglineView.translatesAutoresizingMaskIntoConstraints = false
        taglineView.backgroundColor = .blue
        view.addSubview(taglineView)
        
        NSLayoutConstraint.activate([
            taglineView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor),
            taglineView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            taglineView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            taglineView.heightAnchor.constraint(equalToConstant: 128.0)
        ])

        taglineLabel.translatesAutoresizingMaskIntoConstraints = false
        taglineLabel.textColor = .white
        taglineLabel.backgroundColor = .blue
        taglineLabel.font = UIFont.boldSystemFont(ofSize: 24.0)
        taglineLabel.numberOfLines = 0
        taglineLabel.lineBreakMode = .byWordWrapping
        taglineLabel.text = beer.tagline
        taglineLabel.sizeToFit()
        taglineView.addSubview(taglineLabel)

        NSLayoutConstraint.activate([
            taglineLabel.topAnchor.constraint(equalTo: taglineView.topAnchor, constant: 16.0),
            taglineLabel.rightAnchor.constraint(equalTo: taglineView.rightAnchor, constant: -16.0),
            taglineLabel.bottomAnchor.constraint(equalTo: taglineView.bottomAnchor, constant: -16.0),
            taglineLabel.leftAnchor.constraint(equalTo: taglineView.leftAnchor, constant: 16.0),
        ])

        // Add description view
        descriptionView.translatesAutoresizingMaskIntoConstraints = false
        descriptionView.backgroundColor = .white
        view.addSubview(descriptionView)
        NSLayoutConstraint.activate([
            descriptionView.topAnchor.constraint(equalTo: taglineLabel.bottomAnchor),
            descriptionView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            descriptionView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            descriptionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])

        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.textColor = .black
        descriptionLabel.font = UIFont.boldSystemFont(ofSize: 24.0)
        descriptionLabel.numberOfLines = 0
        descriptionLabel.lineBreakMode = .byWordWrapping
        descriptionLabel.text = beer.description
        descriptionLabel.sizeToFit()
        descriptionView.addSubview(descriptionLabel)
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: descriptionView.topAnchor, constant: 16.0),
            descriptionLabel.rightAnchor.constraint(equalTo: descriptionView.rightAnchor, constant: -16.0),
            descriptionLabel.bottomAnchor.constraint(equalTo: descriptionView.bottomAnchor, constant: -16.0),
            descriptionLabel.leftAnchor.constraint(equalTo: descriptionView.leftAnchor, constant: 16.0),
        ])

    }

}
