//
//  ShoppingListsTableViewController.swift
//  MyGrocery
//
//  Created by vision8 on 2018-10-07.
//  Copyright © 2018 vision8. All rights reserved.
//

import UIKit
import CoreData

class ShoppingListsTableViewController: UITableViewController {

    var managedObjectContext : NSManagedObjectContext! // the heard of CoreData
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        initializeCoreData()
    }
    
    func initializeCoreData() {
        
        guard let modelUrl = Bundle.main.url(forResource: "MyGroceryDataModel", withExtension: "momd")
            else { fatalError("MyGroceryDataModel was not found") }
        
        guard let managedObjectModel = NSManagedObjectModel(contentsOf: modelUrl)
            else { fatalError("Unable to initialize NSManagedObjectModel") }
        
        let persistentStoreCoordinator = NSPersistentStoreCoordinator(managedObjectModel: managedObjectModel)
        
        guard let documentsUrl = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first
            else { fatalError("Unable to get documents URL") }
        
        let storeUrl = documentsUrl.appendingPathComponent("MyGrocery.sqlite")
        
        print("(dbg) storeUrl = \(storeUrl) ")
        
        try! persistentStoreCoordinator.addPersistentStore(ofType: NSSQLiteStoreType, configurationName: nil, at: storeUrl, options: nil)
        
        self.managedObjectContext = NSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType)
        self.managedObjectContext.persistentStoreCoordinator = persistentStoreCoordinator
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
