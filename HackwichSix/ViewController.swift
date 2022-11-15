//
//  ViewController.swift
//  HackwichSix
//
//  Created by Marilia Ledezma on 10/10/22.
//  Copyright © 2022 Marilia Ledezma. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return myFriendsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")
        
        let text = myFriendsArray[indexPath.row]
        
        cell?.textLabel?.text = text
        cell?.detailTextLabel?.text = friendsHomeArray[indexPath.row]
        return cell!
    }
    
   //change 
var myFriendsArray = ["Kapolei Kalapawai"]
    
    @IBOutlet weak var tableView: UITableView!
    var countriesToVisitArray = ["Greece", "Jamaica", "Spain", "Portugal", "UK"]
    
    var friendsHomeArray = ["Kapolei"] 
    
    var restaurantImageData = [String]()
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    let path = Bundle.main.path(forResource: "Property List",ofType: "plist")
    let dict = NSDictionary(contentsOfFile: path!)
    
        restaurantImageData = dict!.object(forKey: "Restaurant Images")
        as! [String]
        
        func tableView(_ tableView: UITableView, didSelectRowAt IndexPath: IndexPath){
            tableView.deselectRow(at: IndexPath as IndexPath, animated: true)
        }
    
   
  
        
    }
    

    override func prepare(for segue:UIStoryboardSegue, sender: Any?)
        {
            let s1 = segue.destination as! detailedViewController
            let imageIndex = tableView.indexPathForSelectedRow?.row
            s1.imagePass = restaurantImageData[imageIndex!]
        }
        
        
   }



