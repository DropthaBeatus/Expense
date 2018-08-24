//
//  ExpenseViewCell.swift
//  ExpenseAssign
//
//  Created by Liam Flaherty on 8/23/18.
//  Copyright © 2018 Liam Flaherty. All rights reserved.
//

import UIKit

class ExpenseViewCell: UITableViewCell {
    @IBOutlet weak var ItemLabel: UILabel!
    @IBOutlet weak var CostLabel: UILabel!
    @IBOutlet weak var DateLabel: UILabel!
 
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
