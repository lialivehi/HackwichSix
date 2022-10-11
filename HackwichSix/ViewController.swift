//
//  ViewController.swift
//  HackwichSix
//
//  Created by Marilia Ledezma on 10/10/22.
//  Copyright © 2022 Marilia Ledezma. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var myFriendsArray = ["Sara", "Mirabai", "Denelle"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFriendsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")
        
        let text = myFriendsArray[indexPath.row]
        
        cell?.textLabel?.text = text
        
        return cell!
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

