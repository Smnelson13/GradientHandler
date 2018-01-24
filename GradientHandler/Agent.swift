//
//  Agent.swift
//  NOCList
//
//  Created by shane nelson on 3/16/17.
//  Copyright © 2017 The Iron Yard. All rights reserved.
//

import Foundation
class Agent
  {
  var coverName: String
  var realName: String
  var accessLevel: Int
  init (coverName: String, realName: String, accessLevel: Int)
  {
    self.coverName = coverName
    self.realName = realName
    self.accessLevel = accessLevel
    
  }
 
  init(agentDictionary: [String:Any])
  {
  self.coverName = agentDictionary["coverName"] as! String
  self.realName = agentDictionary["realName"] as! String
  self.accessLevel = agentDictionary["accessLevel"] as! Int
  }


}
