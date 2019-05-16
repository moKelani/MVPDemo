//
//  UsersVC+TableView.swift
//  MVPDemo
//
//  Created by Mohamed Kelany on 5/16/19.
//  Copyright © 2019 Mohamed Kelany. All rights reserved.
//

import UIKit

extension UsersVC: UITableViewDelegate, UITableViewDataSource {
    func setupTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UserCell.self, forCellReuseIdentifier: "UserCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath) as! UserCell
        
        return cell
    }
}


