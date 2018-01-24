//
//  TableViewController.swift
//  GradientHandler
//
//  Created by Shane Nelson on 1/23/18.
//  Copyright © 2018 Shane Nelson. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController
{
  
  var agents = [Agent]()

  @IBOutlet weak var nameLabel: UILabel!
  @IBAction func doneButtonTapped(_ sender: Any)
{
  self.dismiss(animated: true, completion: nil)
}
override func viewDidLoad()
{
    super.viewDidLoad()
  loadAgents()
  

      // Uncomment the following line to preserve selection between presentations
      // self.clearsSelectionOnViewWillAppear = false

      // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
      // self.navigationItem.rightBarButtonItem = self.editButtonItem
  }

  override func didReceiveMemoryWarning()
  
  {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
  }

  // MARK: - Table view data source

  override func numberOfSections(in tableView: UITableView) -> Int
  {
      // #warning Incomplete implementation, return the number of sections
      return 1
  }

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  {
      // #warning Incomplete implementation, return the number of rows
      return agents.count
  }

  
  func loadAgents()
  {
    do
      //this is all aplied to the noclist
      //make sure to change all the names
      
    {
      let filePath = Bundle.main.path(forResource: "NOC", ofType: "json")
      let dataFromFile = try? Data(contentsOf: URL(fileURLWithPath: filePath!))
      let agentData: [[String: Any]] = try JSONSerialization.jsonObject(with: dataFromFile!, options: []) as! [[String: Any]]
      for agentDictionary in agentData
        //groceryData is the name of the array
        //We are turning groceryitem into an object.
      {
        let anAgent = Agent(agentDictionary: agentDictionary)
        agents.append(anAgent)
      }
    }
    catch let error as NSError
    {
      print(error)
    }
  }


  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
  {
      let cell = tableView.dequeueReusableCell(withIdentifier: "AgentCell", for: indexPath)

      let anAgent = agents[indexPath.row]
      cell.textLabel?.text = anAgent.coverName

      return cell
  }
  

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
      // Get the new view controller using segue.destinationViewController.
      // Pass the selected object to the new view controller.
  }
  */

}
