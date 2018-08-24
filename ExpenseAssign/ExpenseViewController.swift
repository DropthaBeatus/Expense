//
//  ExpenseViewController.swift
//  ExpenseAssign
//
//  Created by Liam Flaherty on 8/24/18.
//  Copyright © 2018 Liam Flaherty. All rights reserved.
//

import UIKit

class ExpenseViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let dFormatter = DateFormatter()
    var CostList: [Double] = MainInstance.CostArray
    var ItemList: [String] = MainInstance.ItemArray
    //Omg this part
    var DateList : [Date] = MainInstance.DateArray
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return CostList.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ExpenseViewCell
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM dd, yyyy h:mm"
        let s = dateFormatter.string(from: DateList[indexPath.row])
        cell.CostLabel.text = "$" + String(CostList[indexPath.row])
        cell.ItemLabel.text = ItemList[indexPath.row]
        cell.DateLabel.text = s
        return cell
    }
    
    
}
