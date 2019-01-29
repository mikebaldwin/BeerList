//
//  BeerListViewController.swift
//  BeerList
//
//  Created by Michael Baldwin on 1/28/19.
//  Copyright © 2019 mikebaldwin.co. All rights reserved.
//

import UIKit

// MARK: - Named Constants
private extension Int {
    static var tableSections = 1
}

private extension String {
    static var cellId = "BeerCell"
}

// MARK: - Class definition

class BeerListViewController: UITableViewController {

    let punkApi = PunkApi()
    var beers: [Beer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Beers"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: .cellId)
        
        punkApi.getBeerList(
            success: { [weak self] beers in
                self?.beers = beers
                self?.tableView.reloadData()
            },
            failure: { error in
                debugPrint("Error retrieving beers: \(error)")
            }
        )
    }

}

// MARK: - Table view data source
extension BeerListViewController {

    override func numberOfSections(in tableView: UITableView) -> Int {
        return .tableSections
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return beers.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: .cellId, for: indexPath)
        let beer = beers[indexPath.row]
        cell.textLabel?.text = beer.name
        return cell
    }

}

// MARK: - Table view delegate

extension BeerListViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let beer = beers[indexPath.row]
        let detailViewController = BeerDetailViewController(with: beer)
        navigationController?.pushViewController(detailViewController, animated: true)
    }
}
