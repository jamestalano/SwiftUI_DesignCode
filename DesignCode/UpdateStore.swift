//
//  UpdateStore.swift
//  DesignCode
//
//  Created by James Talano on 09/15/20.
//  Copyright © 2019 James Talano. All rights reserved.
//

import Combine
import SwiftUI

class UpdateStore: ObservableObject {
   var willChange = PassthroughSubject<Void, Never>()

   var updates: [Update] {
      didSet {
         willChange.send()
      }
   }

   init(updates: [Update] = []) {
      self.updates = updates
   }
}
