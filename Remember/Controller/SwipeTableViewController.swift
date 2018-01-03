//
//  SwipeTableViewController.swift
//  Remember
//
//  Created by Karrui Lau on 3/1/18.
//  Copyright © 2018 Karrui Lau. All rights reserved.
//

import UIKit
import SwipeCellKit

class SwipeTableViewController: UITableViewController, SwipeTableViewCellDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SwipeTableViewCell
        cell.delegate = self
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
        guard orientation == .right else { return nil }
        
        let deleteAction = SwipeAction(style: .destructive, title: nil) { (action, indexPath) in
            // handle action by updating model with deletion
            
            self.updateModel(at: indexPath)
        }
        
        // customize the action appearance
        deleteAction.image = #imageLiteral(resourceName: "cross")
        deleteAction.backgroundColor = UIColor.black
        
        // customize transition
        deleteAction.transitionDelegate = ScaleTransition.default
        
        return [deleteAction]
    }
    
    func tableView(_ tableView: UITableView, editActionsOptionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> SwipeTableOptions {
        var options = SwipeTableOptions()
        options.expansionStyle = .destructive
        return options
    }
    
    func updateModel(at indexPath: IndexPath) {
        // update our data model
    }
}

