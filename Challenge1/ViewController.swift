//
//  ViewController.swift
//  Challenge1
//
//  Created by Danny Vo on 2020-06-14.
//  Copyright © 2020 Danny Vo. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var countries = [String]() // creating an array of strings
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Country Flags"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
     
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = countries[indexPath.row].capitalized
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(identifier: "Detail") as? DetailViewController{
            vc.selectedImage = countries[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }

}

