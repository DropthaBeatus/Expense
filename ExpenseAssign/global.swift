//
//  global.swift
//  ExpenseAssign
//
//  Created by Liam Flaherty on 8/23/18.
//  Copyright © 2018 Liam Flaherty. All rights reserved.
//

import Foundation
class Main{
    let DateArray: [Date] = DateCreate()
    let CostArray: [Double] = [32.50, 59.34, 16.23, 3.95]
    let ItemArray: [String] = ["Dinner", "Office Supplies", "Uber", "Coffee"]
}
/*
 Dinner
 $32.50
 June 1, 2018 18:30
 
 Office Supplies
 $59.34
 May 30, 2018 12:17
 
 Uber
 $16.23
 May 30, 2018 11:43
 
 Coffee
 $3.95
 May 29, 2018 8:45
 */

func DateCreate()->[Date]{
    var DateLoop = [Date]()
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
    let s = "2018-05-1T18:30:00Z"
    DateLoop.append(dateFormatter.date(from: s)!)
    let b = "2018-04-30T12:17:00Z"
    DateLoop.append(dateFormatter.date(from: b)!)
    let p = "2018-04-30T11:43:00Z"
    DateLoop.append(dateFormatter.date(from: p)!)
    let k = "2018-04-29T8:45:00Z"
    DateLoop.append(dateFormatter.date(from: k)!)
    return DateLoop
    
}

var MainInstance = Main()
