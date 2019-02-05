//
//  FoodsViewController.swift
//  Foods
//
//  Created by Tech Innovator on 7/7/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import UIKit

class FoodsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var foodsTableView: UITableView!
    
    var foods = ["Pizza", "Sushi", "Steak", "Chicken", "Fruit", "Salad", "Cake"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        foodsTableView.dataSource = self
        foodsTableView.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foods.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)
        
        cell.textLabel?.text = foods[indexPath.row]
        
        cell.backgroundColor = UIColor.green
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
