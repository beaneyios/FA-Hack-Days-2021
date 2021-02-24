//
//  Bill.swift
//  FAHackDays
//
//  Created by Matt Beaney on 24/02/2021.
//

import Foundation

struct Bill: Decodable {
    var reference: String
    var due_value: Double
    var due_date: String
    var status: String
}
